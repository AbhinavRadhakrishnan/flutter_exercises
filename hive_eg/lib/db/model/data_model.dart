import 'package:hive_flutter/hive_flutter.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String age;
  @HiveField(0)
  int? id;

  StudentModel({required this.name, required this.age, this.id});
}
