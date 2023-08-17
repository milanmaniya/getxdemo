import 'dart:developer';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: crudController.nameEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid data';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'UserName: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: crudController.userNameEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid data';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: crudController.passwordEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid data';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Address: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: crudController.addressEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid data';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (crudController.key.currentState!.validate()) {
                    crudController.addValue(
                      crudController.nameEditingController.text.obs,
                      // crudController.userNameEditingController.text.obs,
                      // crudController.passwordEditingController.text.obs,
                      // crudController.addressEditingController.text.obs,
                    );

                    crudController.isPressed = true.obs;

                    log(crudController.formValue.toString());
                    log(crudController.isPressed.string);
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Data is available')));

                    crudController.clearValue();
                  }
                },
                child: const Text('Submit'),
              ),
              const SizedBox(
                height: 20,
              ),
              ...List.generate(
                crudController.formValue.length,
                (index) => crudController.formValue.isNotEmpty
                    ? ListTile(
                        onTap: () {},
                        title: Text(crudController.formValue[index].obs.string),
                      )
                    : const Text('Value is not added'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
