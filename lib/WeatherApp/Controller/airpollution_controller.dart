import 'package:backend_project/WeatherApp/Helper/http_helper.dart';
import 'package:get/get.dart';
import 'dart:async';

const airPollutionApiUrl =
    'http://api.openweathermap.org/data/2.5/air_pollution';

class AirPollution extends GetxController {
  RxString airPollutionMain = 'AirPollution'.obs;

  RxBool isLoading = true.obs;
  RxDouble co = 0.0.obs;
  RxDouble no = 0.0.obs;
  RxDouble no2 = 0.0.obs;
  RxDouble o3 = 0.0.obs;
  RxDouble so2 = 0.0.obs;
  RxDouble pm2_5 = 0.0.obs;
  RxDouble pm10 = 0.0.obs;
  RxDouble nh3 = 0.0.obs;

  @override
  void onInit() async {
    super.onInit();
    getLocatioairPollution();
  }

  @override
  void onClose() {}
  Future<dynamic> getLocatioairPollution() async {
    NetWorkData networkHelper = NetWorkData(
        '$airPollutionApiUrl?lat=22.7196&lon=75.857727&appid=77e5e2c341fc7f91016d0842cb68fdf2&units=metric');
    var airPollutionData = await networkHelper.getData();

    print('Air Pollution Data: $airPollutionData');

    airPollutionMain.value =
        airPollutionData['list'][0]['main']['aqi'].toString();
    print('Air Pollution Main: ${airPollutionMain.value}');
    co.value = airPollutionData['list'][0]['components']['co'] + 0.0;
    no.value = airPollutionData['list'][0]['components']['no'] + 0.0;
    no2.value = airPollutionData['list'][0]['components']['no2'] + 0.0;
    o3.value = airPollutionData['list'][0]['components']['o3'] + 0.0;
    so2.value = airPollutionData['list'][0]['components']['so2'] + 0.0;
    pm2_5.value = airPollutionData['list'][0]['components']['pm2_5'] + 0.0;
    pm10.value = airPollutionData['list'][0]['components']['pm10'] + 0.0;
    nh3.value = airPollutionData['list'][0]['components']['nh3'] + 0.0;

    isLoading.value = false;

    update();
  }
}
