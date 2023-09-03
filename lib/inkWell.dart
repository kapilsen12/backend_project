import 'package:flutter/material.dart';
class ink extends StatefulWidget {
  const ink({Key? key}) : super(key: key);

  @override
  State<ink> createState() => _inkState();
}

class _inkState extends State<ink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell'),
      ),
      body: Center(
        child: InkWell(
          splashColor: Colors.red,
          highlightColor: Colors.blue,
          borderRadius: BorderRadius.circular(40),
          onTap: (){
            print('OnTab');

          },
        onLongPress: (){
            print('LongPress');
        },
          onDoubleTap: (){
            print('DoubleTab');
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.transparent,
            child: Center(child: Text('Button',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),)),
          ),
        ),
      )
    );
  }
}
