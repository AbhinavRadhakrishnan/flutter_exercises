import 'package:flutter/material.dart';
import 'package:hive_eg/screens/home/add_student.dart';
import 'package:hive_eg/screens/home/list_student.dart';



class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
        children: [
          AddStudent(),
          const Expanded(child:ListStudent()), 
        ],
      )),
    );
  }
}