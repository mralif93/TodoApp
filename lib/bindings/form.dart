import 'package:get/get.dart';

import '../controllers/form.dart';

class ToDoFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToDoFormController>(
      () => ToDoFormController(),
    );
  }
}
