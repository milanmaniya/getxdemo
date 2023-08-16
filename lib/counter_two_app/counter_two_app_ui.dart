import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/counter_two_app/counter_two_controller.dart';

class CounterTwoAppUi extends StatelessWidget {
  const CounterTwoAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    CounterTwoController counterTwoController = Get.find();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterTwoController.oneCount.value++;
                },
                child: const Text('One Increment'),
              ),
              Obx(
                () => Text(
                  counterTwoController.oneCount.value.toString(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  counterTwoController.oneCount++;
                },
                child: const Text('One Decrement'),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterTwoController.twoCount += 2;
                },
                child: const Text('Two Increment'),
              ),
              Obx(
                () => Text(
                  counterTwoController.twoCount.value.toString(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  counterTwoController.twoCount -= 2;
                },
                child: const Text('Two Decrement'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
