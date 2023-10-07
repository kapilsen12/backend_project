import 'package:flutter/material.dart';

class dropdown2 extends StatefulWidget {
  const dropdown2({super.key});

  @override
  State<dropdown2> createState() => _dropdown2State();
}

class _dropdown2State extends State<dropdown2> {
  List dropDownListData = [
    {'title': 'BCA', 'value': '1'},
    {'title': 'MCA', 'value': '2'},
    {'title': 'BBA', 'value': '3'},
  ];
  String defaultValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
      ),
      body: Center(
        child: ListView(
          children: [
            DropdownButton(
                value: defaultValue,
                isExpanded: true,
                items: [
                  DropdownMenuItem(
                    child: Text('Select course'),
                    value: '',
                  ),
                ],
                onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
