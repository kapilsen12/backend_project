import 'package:backend_project/Class/21June/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormOne extends StatefulWidget {
  const FormOne({Key? key}) : super(key: key);

  @override
  State<FormOne> createState() => _FormOneState();
}

class _FormOneState extends State<FormOne> {
  final nameCont = Get.put(FullName());

  final TextEditingController field1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: field1,
            decoration: const InputDecoration(
              hintText: 'Enter Your Name',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              nameCont.changeName(field1.text);
            },
            child: const Text('Submit'),
          ),
          Obx(() => Text('Hello! ${nameCont.name.value}')),
        ],
      )),
    );
  }
}
