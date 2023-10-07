import 'package:backend_project/BNB/Page1.dart';
import 'package:backend_project/BNB/Page2.dart';
import 'package:backend_project/Class/23June/bnb_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final bnbCont = Get.put(BNBController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BNB'),
      ),
      body: Obx(
        () => IndexedStack(
          index: bnbCont.index.value,
          children: [page1(), page2()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          bnbCont.changIndex(index);
        },
        backgroundColor: Colors.black,
        elevation: 5.0,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
