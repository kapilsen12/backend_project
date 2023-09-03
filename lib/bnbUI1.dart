import 'package:backend_project/Class/23June/bnb_controller.dart';
import 'package:backend_project/Class/23June/bnb_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class bnb1 extends StatefulWidget {
  const bnb1({Key? key}) : super(key: key);

  @override
  State<bnb1> createState() => _bnb1State();
}

class _bnb1State extends State<bnb1> {
  final bnbCont = Get.put(BNBController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BNB Controller'),
      ),
      body: Obx(() =>  IndexedStack(
        index: bnbCont.index.value,
        children: [
          Center(child: Text('Home'),),
          Center(child: Text('Search'),),
          Center(child: Text('Account'),),
          Center(child: Text('Setting'),),
        ],
      ),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          bnbCont.changIndex(index);

        },
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'account',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting',backgroundColor: Colors.blue),
        ],
      ),

    );
  }
}
