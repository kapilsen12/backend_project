import 'package:backend_project/Class/23June/bnb_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class bnb extends StatefulWidget {
  const bnb({Key? key}) : super(key: key);

  @override
  State<bnb> createState() => _bnbState();
}

class _bnbState extends State<bnb> {

  final bnbCont = Get.put(BNBController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BNB Controller'),
      ),
      body:
      Obx(() =>  IndexedStack(
        index: bnbCont.index.value,
        children: const [
          Center(child: Text('Home'),),
          Center(child: Text('Search'),),
          Center(child: Text('Account'),),
          Center(child: Text('Setting'),),
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          bnbCont.changIndex (index);
        },
        backgroundColor: Colors.black,
        elevation: 5.0,
        selectedIconTheme: const IconThemeData(color: Colors.black),

        unselectedItemColor: Colors.grey,
        items: const [BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Accoumt'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting')
        ],

      ),

    );
  }
}
