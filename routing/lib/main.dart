import 'package:flutter/material.dart';
import 'package:routing/screen_1.dart';
import 'package:routing/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ScreenOne(),
      // routes: {
      //   'screen_1': (ctx) {
      //     return ScreenOne();
      //   },
      //   'screen_2': (ctx) {
      //     return ScreenTwo();
      //   }
      // },
    );
  }
}
