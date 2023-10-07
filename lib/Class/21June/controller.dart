import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FullName extends GetxController {
  RxString name = 'dummy'.obs;

  void changeName(String newName) {
    name.value = newName;
    update();
  }
}

class Authentication extends GetxController {
  RxString username = 'Kapil'.obs;
  RxString password = '12345'.obs;
  RxString status = 'Enter valid Credentials'.obs;

  void isAuthenticated(String inputUsername, String inputPassword) {
    if (inputUsername == username.value && inputPassword == password.value) {
      status.value = 'Welcome! Kapil';

      update();
    } else {
      status.value = 'Invalid Credentials';
    }
  }
}
