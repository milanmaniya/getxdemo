import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/crud_example/crud_controller.dart';

class CrudFormUi extends StatelessWidget {
  const CrudFormUi({super.key});

  @override
  Widget build(BuildContext context) {
    CrudController crudController = Get.find();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: crudController.key,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: crudController.nameEditingController,
                onChanged: (value) {
                  crudController.nameEditingController.text = value;
                },
                decoration: InputDecoration(
                  labelText: 'Name: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: crudController.userNameEditingController,
                onChanged: (value) {
                  crudController.userNameEditingController.text = value;
                },
                decoration: InputDecoration(
                  labelText: 'UserName: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: crudController.passwordEditingController,
                onChanged: (value) {
                  crudController.passwordEditingController.text = value;
                },
                decoration: InputDecoration(
                  labelText: 'Password: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: crudController.addressEditingController,
                onChanged: (value) {
                  crudController.addressEditingController.text = value;
                },
                decoration: InputDecoration(
                  labelText: 'Address: : ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
