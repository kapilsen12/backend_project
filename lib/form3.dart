import 'package:backend_project/Class/21June/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class form3 extends StatefulWidget {
  const form3({Key? key}) : super(key: key);

  @override
  State<form3> createState() => _form3State();
}

class _form3State extends State<form3> {
  final authenticationCont = Get.put(Authentication());

  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passwordCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get x'),
      ),
      body: Column(
        children: [
          TextField(
            controller:emailCont,decoration: InputDecoration(
            hintText: 'Inter your email',
          ),
          ),
          TextField(
            controller: passwordCont,decoration: InputDecoration(
            hintText: 'Inter your password',
          ),
          ),
          ElevatedButton(onPressed: (){
            authenticationCont.isAuthenticated(emailCont.text, passwordCont.text);
          }, child: Text('Submit')),
          Obx(() => Text(' ${authenticationCont.status.value}'), ),
        ],
      ),
    );
  }
}
