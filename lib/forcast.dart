import 'package:backend_project/Class/23June/bnb_controller.dart';
import 'package:backend_project/WeatherApp/Controller/forcast_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class forcast extends StatefulWidget {
  const forcast({super.key});

  @override
  State<forcast> createState() => _forcastState();
}

class _forcastState extends State<forcast> {
  final bnbCont = Get.put(BNBController());
  final Weatherforcast forecastCont = Get.put(Weatherforcast());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
            child: IndexedStack(
          index: bnbCont.index.value,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${forecastCont.dt_txt.value}'),
                        Column(
                          children: [
                            const Icon(
                              Icons.cloud,
                            ),
                            Text('${forecastCont.temp.value}˚')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('3 pm'),
                        Column(
                          children: const [
                             Icon(
                              Icons.cloud,
                              color: Colors.yellow,
                            ),
                             Text('28˚')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('4 pm'),
                        Column(
                          children: const [
                            Icon(
                              Icons.cloud,
                              color: Colors.yellow,
                            ),
                            Text('28˚')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('5 pm'),
                        Column(
                          children: const [Icon(Icons.cloudy_snowing), Text('27˚')],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('6 pm'),
                        Column(
                          children: const [Icon(Icons.cloud), Text('26˚')],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('7 pm'),
                        Column(
                          children: const [
                            Icon(
                              Icons.cloud,
                              color: Colors.yellow,
                            ),
                            Text('25˚')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('8 pm'),
                        Column(
                          children: const [
                            Icon(
                              Icons.cloud,
                              color: Colors.yellow,
                            ),
                            Text('24˚')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('9 pm'),
                        Column(
                          children: const [Icon(Icons.cloud), Text('24˚')],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
