import 'package:backend_project/Class/23June/bnb_controller.dart';
import 'package:backend_project/WeatherApp/Controller/airpollution_controller.dart';
import 'package:backend_project/WeatherApp/Controller/weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class airpollution extends StatefulWidget {
  const airpollution({super.key});

  @override
  State<airpollution> createState() => _airpollutionState();
}

class _airpollutionState extends State<airpollution> {
  final bnbCont = Get.put(BNBController());
  final AirPollution airPollutionCont = Get.put(AirPollution());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => IndexedStack(
        index: bnbCont.index.value,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.horizontal_split_sharp),
                    Icon(Icons.access_alarm_sharp),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Indore,Madhya Pradesh',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'India',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Air Quality index',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Container(
                      height: 110,
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '26',
                            style: TextStyle(fontSize: 90),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18)),
                    Container(
                      height: 110,
                      width: 105,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.cloudy_snowing,
                                color: Colors.yellow,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4)),
                              Text(
                                '16˚c',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Text('Rain'),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 9)),
                              Icon(
                                Icons.wind_power,
                                color: Colors.yellow,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4)),
                              Text(
                                '30',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'MPH',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          const Text('Wind')
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.sunny,
                          size: 28,
                        ),
                        Column(
                          children: [
                            Text(
                              '${airPollutionCont.pm2_5.value}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'pm 2_5',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.motion_photos_on_sharp,
                          size: 28,
                        ),
                        Column(
                          children: [
                            Text(
                              '${airPollutionCont.pm10.value}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'pm 10',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.cloud_circle_rounded,
                          size: 28,
                        ),
                        Column(
                          children: [
                            Text(
                              '${airPollutionCont.co.value}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'CO',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.nights_stay_rounded,
                          size: 28,
                        ),
                        Column(
                          children: [
                            Text(
                              '${airPollutionCont.no2.value}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'NO2',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.nat_outlined,
                          size: 28,
                        ),
                        Column(
                          children: [
                            Text(
                              '${airPollutionCont.so2.value}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'SO2',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.hexagon_outlined,
                          size: 28,
                        ),
                        Column(
                          children: [
                            Text(
                              '${airPollutionCont.o3.value}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'O3',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'CHO',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'PM2.5',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'PM10',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'PM2.5',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'O2',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
