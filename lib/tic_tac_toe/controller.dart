import 'package:get/get.dart';

class TicTacToeController extends GetxController {
  RxString player1 = 'O turn'.obs;
  RxString player2 = 'X turn'.obs;
  RxBool isActivated = false.obs;
  RxInt fillBox = 0.obs, countO = 0.obs, countX = 0.obs, countDraw = 0.obs;
  List<RxString> boxValue = List.generate(9, (index) => ''.obs);

  void playerSwap(int index, context) {
    if (boxValue[index].value == '') {
      if (isActivated.value == true) {
        boxValue[index].value = 'O';
        fillBox.value++;
        isActivated.value = false;
      } else {
        boxValue[index].value = 'X';
        fillBox.value++;
        isActivated.value = true;
      }
    }
  }

  void winnerState(context) {
    if (boxValue[0].value == boxValue[1].value &&
            boxValue[1].value == boxValue[2].value &&
            boxValue[0].value.isNotEmpty ||
        boxValue[0].value == boxValue[3].value &&
            boxValue[3].value == boxValue[6].value &&
            boxValue[0].value.isNotEmpty ||
        boxValue[2].value == boxValue[5].value &&
            boxValue[5].value == boxValue[8].value &&
            boxValue[2].value.isNotEmpty ||
        boxValue[6].value == boxValue[7].value &&
            boxValue[7].value == boxValue[8].value &&
            boxValue[6].value.isNotEmpty ||
        boxValue[3].value == boxValue[4].value &&
            boxValue[4].value == boxValue[5].value &&
            boxValue[3].value.isNotEmpty ||
        boxValue[1].value == boxValue[4].value &&
            boxValue[4].value == boxValue[7].value &&
            boxValue[1].value.isNotEmpty ||
        boxValue[2].value == boxValue[4].value &&
            boxValue[4].value == boxValue[6].value &&
            boxValue[2].value.isNotEmpty ||
        boxValue[0].value == boxValue[4].value &&
            boxValue[4].value == boxValue[8].value &&
            boxValue[0].value.isNotEmpty) {
      winnerCount(context);
      clearControl();
    } else if (fillBox.value == 9) {
      Get.snackbar('Player Winner', 'Match Try Please Try Again!....');
      countDraw.value++;
      clearControl();
    }
  }

  void winnerCount(context) {
    if (isActivated.value) {
      countX.value++;
      Get.snackbar('Winner Name', 'Player X Winner');
    } else {
      countO.value++;
      Get.snackbar('Player Winner', 'Player O Winner');
    }
  }

  void clearControl() {
    boxValue = List.generate(9, (index) => ''.obs);
    fillBox.value = 0;
  }
}
