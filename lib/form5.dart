import 'package:backend_project/Class/21June/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class form5 extends StatefulWidget {
  const form5({super.key});

  @override
  State<form5> createState() => _form5State();
}

class _form5State extends State<form5> {
  final AuthenticationCont = Get.put(Authentication());

  final TextEditingController passCont = TextEditingController();
  final TextEditingController emailCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailCont,
              decoration: InputDecoration(
                labelText: 'Enter your email',
              ),
            ),
            TextField(
              controller: passCont,
              decoration: InputDecoration(labelText: 'password'),
            ),
            ElevatedButton(
                onPressed: () {
                  AuthenticationCont.isAuthenticated(
                      emailCont.text, passCont.text);
                },
                child: Text('sign in')),
          Obx(() => Text('${AuthenticationCont.status.value}'))
          ],
        ),
      ),
    );
  }
}
