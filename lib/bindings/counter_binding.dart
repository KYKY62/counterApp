import 'package:get/get.dart';

import '../GetX/counter_controller.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CounterController(), tag: "timA");
    Get.put(CounterController(), tag: "timB");
    Get.put(CounterController(), tag: "timC");
  }
}
