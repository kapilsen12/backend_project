import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  bool _lights = false;
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CupertinoSwitch(
                value: _lights,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                }),
            Switch.adaptive(
                activeColor: Colors.green,
                value: _light,
                onChanged: (bool value) {
                  setState(() {
                    _light = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
