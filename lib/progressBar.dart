import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class progress extends StatefulWidget {
  const progress({super.key});

  @override
  State<progress> createState() => _progressState();
}

class _progressState extends State<progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 100.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 15.0,
              percent: 0.6,
              center: new Text(
                "40 hours",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              fillColor: Colors.black12,

              backgroundColor: Colors.grey,
              progressColor: Colors.red,
            ),
            LinearPercentIndicator(
                barRadius: Radius.circular(50),
                lineHeight: 20,
                backgroundColor: Colors.grey,
                progressColor: Colors.red,
                animation: true,
                animationDuration: 1000,
                center: Text("60.0%"),
                percent: .6)
          ],
        ),
      ),
    );
  }
}
