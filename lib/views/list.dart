import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/local_storage/shared_preferences.dart';
import 'package:todoapp/controllers/list.dart';
import 'package:todoapp/routes/routes.dart';
import 'package:todoapp/utils/colors.dart';
import 'package:todoapp/utils/toast.dart';
import 'package:todoapp/widgets/svg.dart';
import 'package:todoapp/widgets/card.dart';

class ToDoListView extends GetView<ToDoListController> {
  const ToDoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtil.background,
      appBar: AppBar(
        title: const Text("To-Do List"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.transparent),
            onPressed: () {
              UserSharedPreferences.clearSharedPreference();
              ToastUtil.snackBar(title: 'Success', message: 'Cleared cached data');
            },
          ),
        ],
      ),
      body: GetBuilder<ToDoListController>(
        builder: (ToDoListController controller) {
          if (controller.toDoList.isEmpty) {
            return const ToDoIllustration();
          } else {
            return ListView.separated(
              padding: const EdgeInsets.all(10),
              itemCount: controller.toDoList.length,
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10);
              },
              itemBuilder: (BuildContext context, int index) {
                return ToDoCard(
                  title: controller.toDoList[index].title ?? '',
                  endDate: controller.toDoList[index].endDate ?? DateTime.now(),
                  startDate: controller.toDoList[index].startDate ?? DateTime.now(),
                  checkBoxValue: controller.toDoList[index].isDone,
                  onLongPress: () => controller.deleteToDo(controller.toDoList[index].id!),
                  onTap: () => Get.toNamed(AppRoutes.toDoForm, arguments: controller.toDoList[index]),
                  onChanged: (bool? value) {
                    controller.toDoList[index].isDone = value!;
                    controller.update();
                    UserSharedPreferences.setToDoList(controller.toDoList);
                  },
                );
              },
            );
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(AppRoutes.toDoForm, arguments: null),
        child: const Icon(Icons.add),
      ),
    );
  }
}
