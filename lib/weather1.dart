import 'package:backend_project/Class/23June/bnb_controller.dart';
import 'package:backend_project/WeatherApp/Controller/weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class weather1 extends StatefulWidget {
  const weather1({super.key});

  @override
  State<weather1> createState() => _weather1State();
}

class _weather1State extends State<weather1> {
  final bnbCont = Get.put(BNBController());
  final WeatherModel weatherCont = Get.put(WeatherModel());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/weather4.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.dehaze)),
                  Text('${weatherCont.country.value},Indore'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.location_on_outlined))
                ],
              ),
              const Text('Lock screen')
            ],
          ),
          toolbarHeight: 80,
        ),
        body: SingleChildScrollView(
          child: Obx(() => IndexedStack(
                index: bnbCont.index.value,
                children: [
                  Column(
                    children: [
                      Card(
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 180,
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      weatherCont.date.value,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    const Icon(
                                      Icons.dehaze,
                                      size: 30,
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      weatherCont.time.value,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${weatherCont.temperature.value}˚c',
                                      style: const TextStyle(fontSize: 50),
                                    ),
                                    Text(
                                      weatherCont.weatherMain.value,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8)),
                                Row(
                                  children: [
                                    Text(
                                      'wind degree: ${weatherCont.degree.value}',
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40)),
                                    const Icon(
                                      Icons.vertical_align_top,
                                    ),
                                    Text(
                                      '${weatherCont.maxTemp.value}˚c',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'wind Speed: ${weatherCont.wind.value} km/hr',
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21)),
                                    const Icon(
                                      Icons.vertical_align_bottom,
                                    ),
                                    Text(
                                      '${weatherCont.minTemp.value}˚c',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 180,
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        '07:00AM',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '08:00AM',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '09:00AM',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '10:00AM',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '11:00AM',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        size: 27,
                                      ),
                                      Icon(
                                        Icons.wb_cloudy_outlined,
                                        size: 27,
                                      ),
                                      Icon(
                                        Icons.wb_cloudy_rounded,
                                        size: 27,
                                      ),
                                      Icon(
                                        Icons.wb_cloudy_rounded,
                                        size: 27,
                                      ),
                                      Icon(
                                        Icons.wb_cloudy_outlined,
                                        size: 27,
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5)),
                                  Row(
                                    children: const [
                                      Icon(Icons.cloudy_snowing),
                                      Text(
                                        '15%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Icon(Icons.cloudy_snowing),
                                      Text(
                                        '19%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9)),
                                      Icon(Icons.cloudy_snowing),
                                      Text(
                                        '25%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10)),
                                      Icon(Icons.cloudy_snowing),
                                      Text(
                                        '28%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10)),
                                      Icon(Icons.cloudy_snowing),
                                      Text(
                                        '30%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        '24˚',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '24˚',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '25˚',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '25˚',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '26˚',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10)),
                                  Row(
                                    children: const [
                                      Icon(Icons.cloudy_snowing),
                                      Text(
                                        'Chance of rain',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8)),
                                      Icon(Icons.ac_unit),
                                      Text(
                                        'Chance of Snow',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                      Card(
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 450,
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Thursday',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30)),
                                    Icon(
                                      Icons.cloudy_snowing,
                                      size: 28,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24)),
                                    Icon(Icons.cloudy_snowing),
                                    Text(
                                      '100%',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10)),
                                    Text(
                                      '24˚/29˚',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Friday',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 41)),
                                    Icon(
                                      Icons.cloudy_snowing,
                                      size: 28,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24)),
                                    Icon(Icons.cloudy_snowing),
                                    Text(
                                      '100%',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 11)),
                                    Text(
                                      '23˚/28˚',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Saturday',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 32)),
                                    Icon(
                                      Icons.cloudy_snowing,
                                      size: 28,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24)),
                                    Icon(Icons.cloudy_snowing),
                                    Text(
                                      '97%',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 13)),
                                    Text(
                                      '24˚/29˚',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Sunday',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 38)),
                                    Icon(
                                      Icons.cloudy_snowing,
                                      size: 28,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 23)),
                                    Icon(Icons.cloudy_snowing),
                                    Text(
                                      '82%',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14)),
                                    Text(
                                      '23˚/31˚',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Monday',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 37)),
                                    Icon(
                                      Icons.cloud_outlined,
                                      size: 28,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21)),
                                    Icon(Icons.cloudy_snowing),
                                    Text(
                                      '24%',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 13)),
                                    Text(
                                      '24˚/31˚',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Tuesday',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 36)),
                                    Icon(
                                      Icons.cloud_outlined,
                                      size: 28,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21)),
                                    Icon(Icons.cloudy_snowing),
                                    Text(
                                      '6%',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 19)),
                                    Text(
                                      '25˚/32˚',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Wednesday',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25)),
                                    Icon(
                                      Icons.cloudy_snowing,
                                      size: 28,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20)),
                                    Icon(Icons.cloudy_snowing),
                                    Text(
                                      '24%',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14)),
                                    Text(
                                      '24˚/31˚',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Thrusday',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 33)),
                                    Icon(
                                      Icons.cloudy_snowing,
                                      size: 28,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20)),
                                    Icon(Icons.cloudy_snowing),
                                    Text(
                                      '23%',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 13)),
                                    Text(
                                      '24˚/34˚',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
