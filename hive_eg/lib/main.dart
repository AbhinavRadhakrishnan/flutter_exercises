import 'package:flutter/material.dart';
import 'package:hive_eg/db/model/data_model.dart';
import 'package:hive_eg/screens/screen_home.dart';
import 'package:hive_flutter/adapters.dart';

main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenHome(),
    );
  }
}
