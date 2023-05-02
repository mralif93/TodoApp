import 'package:get/get.dart';
import 'package:todoapp/bindings/form.dart';
import 'package:todoapp/bindings/list.dart';
import 'package:todoapp/views/form.dart';
import 'package:todoapp/views/list.dart';
import 'package:todoapp/routes/routes.dart';

// ignore_for_file: always_specify_types
class AppPages {
  static String initialRoute = AppRoutes.toDoList;
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.toDoList,
      page: () => const ToDoListView(),
      binding: ToDoListBinding(),
    ),
    GetPage(
      name: AppRoutes.toDoForm,
      page: () => const ToDoFormView(),
      binding: ToDoFormBinding(),
    ),
  ];
}
