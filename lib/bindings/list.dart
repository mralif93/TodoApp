import 'package:get/get.dart';

import '../controllers/list.dart';

class ToDoListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToDoListController>(
      () => ToDoListController(),
    );
  }
}
