import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
ValueNotifier<List<persondata>> persondataListNotifier = ValueNotifier([]);
void addperson(persondata value) async {

  final workoutDB = await Hive.openBox<persondata>('person_db');
  final id = await workoutDB.add(value);
  value.id = id;
  getAllperson();
 persondataListNotifier.value.add(value);
 

  persondataListNotifier.notifyListeners();
}
Future<void> getAllperson() async {
  final workoutDB = await Hive.openBox<persondata>('person_db');
  persondataListNotifier.value.clear();
  persondataListNotifier.value.addAll(workoutDB.values);
  persondataListNotifier.notifyListeners();
}
Future<void> updateperson(int id,  value) async {
  final studentsDB = await Hive.openBox<persondata>('person_db');
  await studentsDB.putAt(id, value);
  getAllperson() ;
}
