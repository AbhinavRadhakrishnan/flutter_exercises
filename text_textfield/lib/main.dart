import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenHome(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final _textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            color: Colors.yellow[100],
            child: Column(
              children: [
                TextField(
                  controller: _textcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'type something',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //get data
                    print(_textcontroller.text);
                  },
                  child: Text('Click'),
                ),
                Text('data will be shown'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
