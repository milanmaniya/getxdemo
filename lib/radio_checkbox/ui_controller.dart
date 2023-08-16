import 'package:get/get.dart';

class UiController extends GetxController {
  RxString gender = 'Gender'.obs, male = 'male'.obs, female = 'female'.obs;
  RxList<bool> checkBoxValue = [false, false, false].obs;

  void changeGender(String value) {
    gender.value = value;
  }
}
