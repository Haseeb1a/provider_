import 'package:flutter/material.dart';
import 'package:workouttraker/function/db_functions/db_functions.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/splace.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(WorkoutmodelAdapter().typeId)) {
    Hive.registerAdapter(WorkoutmodelAdapter());
  }
  if (!Hive.isAdapterRegistered(persondataAdapter().typeId)) {
    Hive.registerAdapter(persondataAdapter());
  }
   await Hive.openBox<Workoutmodel>('workout_db');
   await Hive.openBox<persondata>('person_db');
   await getAllTasks();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplaceScreen(),    
      title: 'Flutter Demo',
    );
  }
}
// ssssssssssssssssssss---------






