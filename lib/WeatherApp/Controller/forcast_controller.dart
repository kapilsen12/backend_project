import 'dart:async';
import 'package:backend_project/WeatherApp/Helper/http_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

const forecastApiUrl = 'https://api.openweathermap.org/data/2.5/forecast';

class Weatherforcast extends GetxController {

  RxBool isLoading = true.obs;
  RxString forecastMain = 'forecast'.obs;

  // RxList dt_txt = [].obs;
  // RxList dt = [].obs;

  RxInt dt = 00.obs;
  RxInt dt_txt = 00.obs;
  RxDouble temp = 0.0.obs;


  @override
  void onInit() async {
    super.onInit();
    getLocatioForecast();
  }

  @override
  void onClose() {}
  Future<dynamic> getLocatioForecast() async {
    NetWorkData networkHelper = NetWorkData(
        '$forecastApiUrl?lat=22.7196&lon=75.857727&appid=77e5e2c341fc7f91016d0842cb68fdf2&units=metric');
    var forecastData = await networkHelper.getData();

    print(forecastData);
    forecastMain.value = ["list"][0];

    temp.value = forecastData['list'][0]['main']['temp'] + 0.0;
    dt_txt.value = forecastData['list'][0]['dt_txt'] + 0.0;
    dt.value = forecastData['list'] [0]['dt'] + 0.0;


    // dt.value = forecastData['list'][0]['dt'] + 0.0;
    // dt_txt.value = forecastData['list'][0]['dt_txt'] + 0.0;


    isLoading.value = false;
    update();
  }
}
