import 'package:flutter/material.dart';
class stack extends StatefulWidget {
  const stack({Key? key}) : super(key: key);

  @override
  State<stack> createState() => _stackState();
}

class _stackState extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Center(
        child: Container(
          child: Stack(
alignment: Alignment.topRight,
            children: [
              Container(
                height: 250,
                width: 250,
                color: Colors.green,
              ),

              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),

                Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                ),
              Text('Hello'),
            ],
          ),
        ),
      )
    );
  }
}
