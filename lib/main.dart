import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/init.controller.dart';
import 'package:getxdemo/radio_checkbox/ui.dart';

void main() {
  InitController.getAllController;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Ui(),
    );
  }
}
