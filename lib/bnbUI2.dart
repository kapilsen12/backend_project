import 'package:backend_project/Class/23June/bnb_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bnb2 extends StatefulWidget {
  const bnb2({Key? key}) : super(key: key);

  @override
  State<bnb2> createState() => _bnb2State();
}

class _bnb2State extends State<bnb2> {
  final bnbCont = Get.put(BNBController());
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BnB Controller'),
      ),
      body: Obx(
        () => IndexedStack(
          index: bnbCont.index.value,
          children: [
            Center(
              child: Text('Home'),
            ),
            Center(
              child: Text('Search'),
            ),
            Center(
              child: Text('Account'),
            ),
            Center(
              child: Text('Setting'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        onTap: (
          int index,
        ) {
          setState(() {
            _currentIndex = index;
          });
          bnbCont.changIndex(index);
        },
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting')
        ],
      ),
    );
  }
}
