import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
   ScreenMain({super.key});

  final _list = [
    'Apple',
    'Orange',
    'Pineappple',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DropdownButtonFormField(
          hint: Text('select Fruits'),
            onChanged: (value) {
              print(value);
            },
            items: _list.map((e) {
              return DropdownMenuItem(
                value: e,
                 child: Text(e));
            }).toList()),
      ),
    );
  }
}
