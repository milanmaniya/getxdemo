import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/counter_app/counter_controller.dart';

class CounterAppUi extends StatelessWidget {
  const CounterAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();

    log('Build');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counterController.count++;
          log(counterController.count.toString());
        },
      ),
      body: Center(
        child: Obx(
          () => Text(
            counterController.count.value.toString(),
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
