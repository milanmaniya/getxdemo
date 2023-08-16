import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/counter_app/counter_ui.dart';
import 'package:getxdemo/radio_checkbox/ui_controller.dart';

class Ui extends StatelessWidget {
  Ui({super.key});
  UiController uiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text('Gender: '),
              Obx(
                () => Radio(
                  value: uiController.male.value,
                  groupValue: uiController.gender.value,
                  onChanged: (value) {
                    uiController.changeGender(value.toString());
                    log(uiController.gender.value);
                  },
                ),
              ),
              const Text('Male'),
              Obx(
                () => Radio(
                  value: uiController.female.value,
                  groupValue: uiController.gender.value,
                  onChanged: (value) {
                    uiController.changeGender(value.toString());
                    log(uiController.gender.value);
                  },
                ),
              ),
              const Text('Female'),
            ],
          ),
          Row(
            children: [
              const Text('Hobby: '),
              Checkbox(
                value: uiController.checkBoxValue[0],
                onChanged: (value) {},
              ),
              const Text('Reading'),
              Checkbox(
                value: uiController.checkBoxValue[1],
                onChanged: (value) {},
              ),
              const Text('Football'),
              Checkbox(
                value: uiController.checkBoxValue[2],
                onChanged: (value) {},
              ),
              const Text('Music'),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const CounterAppUi());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
