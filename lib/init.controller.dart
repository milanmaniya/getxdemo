import 'package:get/get.dart';
import 'package:getxdemo/counter_app/counter_controller.dart';
import 'package:getxdemo/counter_two_app/counter_two_controller.dart';
import 'package:getxdemo/radio_checkbox/ui_controller.dart';

class InitController {
  static get getAllController {
    Get.lazyPut(() => CounterController(), fenix: true);
    Get.lazyPut(() => CounterTwoController(), fenix: true);
    Get.lazyPut(() => UiController(), fenix: true);
    // Get.put(CounterController());
    // Get.put(CounterTwoController());
    // Get.put(UiController());
  }
}
