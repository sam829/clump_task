import 'package:clump_task/modules/log_in/log_in_controller.dart';
import 'package:get/get.dart';

class LogInBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInController());
  }
}
