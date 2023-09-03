import 'dart:async';
import 'package:backend_project/WeatherApp/Helper/http_helper.dart';
import 'package:flutter/semantics.dart';
import 'package:get/get.dart';
import '';
//import 'package:weather_app/WeatherApp/Controller/geo_location_controller.dart';
//import 'package:weather_app/WeatherApp/Helper/http_helper.dart';

const weatherAPIUrl = 'api.openweathermap.org/data/2.5/forecast';


class FiveDayData extends GetxController {

  RxList fiveDaysHour = [].obs;
  RxList fiveDaysMinute = [].obs;
  RxList fiveDaysIcon = [].obs;
  RxList fiveDaysTemp = [].obs;
  //RxList fiveDayDate = [].obs;

  RxInt minute = 00.obs;
  RxInt hour = 00.obs;
  RxString icon = ''.obs;
  RxDouble temp = 0.0.obs;
  //RxDouble date=0.0.obs;

  @override
  void onInit() async {
    super.onInit();
    getLocationWeather();
  }

  @override
  void onClose() {
  }

  Future<dynamic> getLocationWeather() async {
   NetWorkData networkHelper = NetWorkData(
        '$weatherAPIUrl?lat=22.719568&lon=75.857727&appid=2555bbf0db6f9428087e920bc77fc685&units=metric');

    var fivedayForecast = await networkHelper.getData();

    for (int i = 0; i <= 39; i++) {
      hour.value = DateTime.fromMillisecondsSinceEpoch(
          fivedayForecast['list'][i]['dt'] * 1000)
          .hour;
      minute.value = DateTime.fromMillisecondsSinceEpoch(
          fivedayForecast['list'][i]['dt'] * 1000)
          .minute;
      temp.value = fivedayForecast['list'][i]['main']['temp'] + 0.0;
      icon.value = "http://openweathermap.org/img/w/" +
          fivedayForecast['list'][i]['weather'][0]['icon'] +
          '.png';
      //date.value=fivedayForecast['list'][i]['dt_txt']+0.0;

      fiveDaysHour.value.add(hour.value);
      fiveDaysMinute.value.add(minute.value);
      fiveDaysIcon.value.add(icon.value);
      fiveDaysTemp.value.add(temp.value);
      //fiveDayDate.value.add(date.value);
    }
  }
}
