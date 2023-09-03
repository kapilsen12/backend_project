import 'package:backend_project/Class/21June/form1.dart';
import 'package:backend_project/Class/23June/bnb_ui.dart';
import 'package:backend_project/air_Pollution.dart';
import 'package:backend_project/bottomSheet.dart';

import 'package:backend_project/button.dart';
import 'package:backend_project/chechBox.dart';

import 'package:backend_project/covid.dart';
import 'package:backend_project/GestureD1.dart';
import 'package:backend_project/dropDownButton.dart';
import 'package:backend_project/forcast.dart';

import 'package:backend_project/form5.dart';
import 'package:backend_project/inkWell.dart';
import 'package:backend_project/login%20P.dart';

import 'package:backend_project/progressBar.dart';
import 'package:backend_project/register%20p.dart';

import 'package:backend_project/bnbUI1.dart';
import 'package:backend_project/bnbUI2.dart';
import 'package:backend_project/bnbwhatsap.dart';
import 'package:backend_project/form2.dart';
import 'package:backend_project/form3.dart';
import 'package:backend_project/form4.dart';
import 'package:backend_project/stackW..dart';
import 'package:backend_project/WeatherApp/weather.dart';
import 'package:backend_project/weather1.dart';
import 'package:backend_project/whatsapUI.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Backend Apps',
      theme: ThemeData.light(),
      home: weather1(),
    );
  }
}
