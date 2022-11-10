import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() => counter + 1;
  void reset() {
    counter - 1000;
    if (counter <= 0) {
      counter = 0.obs;
    }
  }

  void decrement() {
    counter - 1;
    if (counter <= 0) {
      counter = 0.obs;
    }
  }
}
