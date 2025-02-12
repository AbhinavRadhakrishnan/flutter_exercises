import 'package:flutter/material.dart';
import 'package:hive_eg/db/functions/dbfunctions.dart';
import 'package:hive_eg/db/model/data_model.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder:
          (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
        return ListView.separated(
          itemBuilder: (ctx, index) {
             final data = studentList[index];
            return ListTile(
             
              title: Text(data.name),
              subtitle: Text(data.age),
            );
          },
          separatorBuilder: (ctx, index) => const Divider(),
          itemCount: studentList.length,
        );
      },
    );
  }
}
