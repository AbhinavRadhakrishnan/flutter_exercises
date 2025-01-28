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

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final _textcontroller = TextEditingController();
  String _displaytext = "text to show";

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
                    setState(() {
                      _displaytext = _textcontroller.text;
                    });
                  },
                  child: Text('Click'),
                ),
                Text(_displaytext),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
