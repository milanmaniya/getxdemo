import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrudController extends GetxController {
  List<RxString> formValue = [];
  RxBool isPressed = false.obs;
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController userNameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController addressEditingController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();

  void addValue(RxString value) {
    formValue.add(value);
  }

  void clearValue() {
    nameEditingController.clear();
    userNameEditingController.clear();
    passwordEditingController.clear();
    addressEditingController.clear();
  }
}
