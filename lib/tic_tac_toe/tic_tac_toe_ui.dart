import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/tic_tac_toe/controller.dart';

class TicTacToeUi extends StatelessWidget {
  const TicTacToeUi({super.key});

  @override
  Widget build(BuildContext context) {
    TicTacToeController ticTacToeController = Get.find();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Tic Tac Toe',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Obx(
                () => Column(
                  children: [
                    const Text(
                      'Player X',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ticTacToeController.countX.value.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Obx(
                () => Column(
                  children: [
                    const Text(
                      'Player O',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ticTacToeController.countO.value.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Obx(
                () => Column(
                  children: [
                    const Text(
                      'Draw',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ticTacToeController.countDraw.value.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: List.generate(
              9,
              (index) => GestureDetector(
                onTap: () {
                  ticTacToeController.playerSwap(index, context);
                  log(ticTacToeController.boxValue.toString());
                },
                child: Card(
                  elevation: 14,
                  color: Colors.grey.shade400,
                  margin: const EdgeInsets.all(3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color: Colors.black26,
                    ),
                  ),
                  child: Center(
                    child: Obx(
                      () => Text(
                        ticTacToeController.boxValue[index].value,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(7),
                    minimumSize: MaterialStateProperty.all(const Size(150, 50)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade300),
                  ),
                  onPressed: () {
                    ticTacToeController.clearControl();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  ticTacToeController.isActivated.value
                      ? ticTacToeController.player1.string
                      : ticTacToeController.player2.string,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(7),
                    minimumSize: MaterialStateProperty.all(const Size(150, 50)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade300),
                  ),
                  onPressed: () {
                    ticTacToeController.clearControl();
                  },
                  child: const Text(
                    'Restart',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
