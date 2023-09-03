import 'package:backend_project/WeatherApp/weather.dart';
import 'package:flutter/material.dart';

class gesture extends StatefulWidget {
  const gesture({super.key});

  @override
  State<gesture> createState() => _gestureState();
}

class _gestureState extends State<gesture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetectore'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => weather()));
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.black)),
                alignment: Alignment.center,
                child: Text(
                  'press',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
