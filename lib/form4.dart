import 'package:backend_project/Class/21June/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class form4 extends StatefulWidget {
  const form4({Key? key}) : super(key: key);

  @override
  State<form4> createState() => _form4State();
}

class _form4State extends State<form4> {
  final AuthenticationCont = Get.put(Authentication());

  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get x'),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailCont,decoration: InputDecoration(
            hintText: 'Enter your mail',

          ),
          ),
          TextField(
            controller: passCont,decoration: InputDecoration(
            hintText: 'Enter your password',
          ),
          ),
          ElevatedButton(onPressed: (){
            AuthenticationCont.isAuthenticated(emailCont.text, passCont.text);
          }, child: Text('Submit')),
          Obx(() => Text('${AuthenticationCont.status.value}'))
        ],
      )
    );
  }
}
