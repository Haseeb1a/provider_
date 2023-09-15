
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/login.dart';


//clear from db - reset

Future<void> resetDB(
  BuildContext context,
) async {
  // ignore: use_build_context_synchronously
  bool confirmReset = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: const Color.fromARGB(255, 27, 57, 61),
        title: const Text(
          "Confirm Reset",
          style: TextStyle(color: Colors.white),
        ),
        content: const Text(
          "Are you sure you want to reset all settings",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              "Cancel",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 254)),
            ),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
          TextButton(
            child: const Text(
              "Reset",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ],
      );
    },
  );

  if (confirmReset == true) {
     final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
     
    workoutDB.clear();
     SharedPreferences prefs = await SharedPreferences.getInstance();
     prefs.clear();
    
 final person_db = await Hive.openBox<persondata>('person_db');
   person_db.clear();
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  LoginScreen(),
));
}
}

