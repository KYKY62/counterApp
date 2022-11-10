import 'counter_controller.dart';
import 'counter_widget_getx.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterWithGetx extends StatelessWidget {
  CounterWithGetx({Key? key}) : super(key: key);

  final timA = Get.put(CounterController(), tag: "timA");
  final timB = Get.put(CounterController(), tag: "timB");
  final timC = Get.put(CounterController(), tag: "timC");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Board With GetX"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterWidgetGetx(
              value: Obx(
                () => Text(
                  "${timA.counter}",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              title: "Team A",
              color: Colors.amber,
              onpressedTambah: () => timA.increment(),
              onpressedKurang: () => timA.decrement(),
              onpressedReset: () => timA.reset(),
            ),
            CounterWidgetGetx(
              value: Obx(
                () => Text(
                  "${timB.counter}",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              title: "Team B",
              color: Colors.green,
              onpressedTambah: () => timB.increment(),
              onpressedKurang: () => timB.decrement(),
              onpressedReset: () => timB.reset(),
            ),
            CounterWidgetGetx(
              value: Obx(
                () => Text(
                  "${timC.counter}",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              title: "Team C",
              color: Colors.blueAccent,
              onpressedTambah: () => timC.increment(),
              onpressedKurang: () => timC.decrement(),
              onpressedReset: () => timC.reset(),
            )
          ],
        ),
      ),
    );
  }
}
