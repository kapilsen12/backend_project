import 'dart:async';
import 'package:get/get.dart';
import '../Helper/http_helper.dart';

const weatherApiUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel extends GetxController {
  RxBool isLoading = true.obs;
  RxString date = "29 07 2023".obs;
  RxString time = "15:05".obs;
  RxString country = 'India'.obs;
  RxString city = 'Indore'.obs;

  RxString weatherMain = 'Weather'.obs;
  RxString weatherDescription = 'Weather Description'.obs;
  RxString icon = 'icon'.obs;

  RxDouble temperature = 0.0.obs;
  RxDouble minTemp = 0.0.obs;
  RxDouble maxTemp = 0.0.obs;
  RxDouble humidity = 0.0.obs;

  RxDouble visibility = 0.0.obs;

  RxDouble wind = 0.0.obs;
  RxDouble degree = 0.0.obs;

  @override
  void onInit() async {
    super.onInit();
    getLocatioWeather();
    updateDateAndTime();
  }

  @override
  void onClose() {}

  Future<dynamic> getLocatioWeather() async {
    NetWorkData networkHelper = NetWorkData(
        '$weatherApiUrl?lat=22.7196&lon=75.857727&appid=77e5e2c341fc7f91016d0842cb68fdf2&units=metric');
    var weatherData = await networkHelper.getData();

    print(weatherData);

    weatherMain.value = weatherData['weather'][0]['main'];
    weatherDescription.value = weatherData['weather'][0]['description'];
    icon.value = "http://openweathermap.org/img/w/" +
        weatherData['weather'][0]['icon'] +
        ".png";

    temperature.value = weatherData['main']['temp'] + 0.0;
    minTemp.value = weatherData['main']['temp_min'] + 0.0;
    maxTemp.value = weatherData['main']['temp_max'] + 0.0;
    humidity.value = weatherData['main']['humidity'] + 0.0;
    visibility.value = weatherData['visibility'] + 0.0;
    wind.value = weatherData['wind']['speed'] + 0.0;
    degree.value = weatherData['wind']['deg'] + 0.0;
    country.value = weatherData['sys']['country'];
    city.value = weatherData['name'];

    isLoading.value = false;

    update();
  }

  void updateDateAndTime() {
    date.value =
        "${DateTime.now().day} ${DateTime.now().month} ${DateTime.now().year}";
    time.value = "${DateTime.now().hour}:${DateTime.now().minute}";
    Timer.periodic(const Duration(minutes: 1), (timer) {
      time.value = "${DateTime.now().hour}:${DateTime.now().minute}";
    });
    update();
  }
}
