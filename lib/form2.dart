import 'package:backend_project/Class/21June/controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class formtwo extends StatefulWidget {
  const formtwo({Key? key}) : super(key: key);

  @override
  State<formtwo> createState() => _formtwoState();
}

class _formtwoState extends State<formtwo> {
  final nameCont = Get.put(FullName());

  final TextEditingController field2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: field2,
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  nameCont.changeName(field2.text);
                },
                child: Text('Submit')),
            Obx(() => Text('hello ${nameCont.name.value}'))

          ],

        ),
      ),
    );
  }
}
