import 'package:flutter/material.dart';

class chechbox extends StatefulWidget {
  const chechbox({super.key});

  @override
  State<chechbox> createState() => _chechboxState();
}

class _chechboxState extends State<chechbox> {
  bool isChecked = false;

  void printMessage() {
    print('user accepect the aagreement');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChechBox'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    }),
                Text('I have read agreement and i accepet it'),
              ],
            ),
            MaterialButton(
              onPressed: isChecked ? printMessage : null,
              child: Text(
                'Conform',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
