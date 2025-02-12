import 'package:flutter/material.dart';
import 'package:hive_eg/db/functions/dbfunctions.dart';
import 'package:hive_eg/db/model/data_model.dart';

class AddStudent extends StatelessWidget {
  AddStudent({super.key});
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: _ageController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Age',
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                addStudentButtonclicked();
              },
              icon: const Icon(Icons.add),
              label: const Text('Add student'))
        ],
      ),
    );
  }

  addStudentButtonclicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    //print('$_name $_age');

    final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}
