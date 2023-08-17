import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrudController extends GetxController {
  List<RxString> formValue = [];
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController userNameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController addressEditingController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
}
