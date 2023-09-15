import 'package:flutter/material.dart';
import 'package:workouttraker/function/db_functions/db_functions.dart';
import 'package:workouttraker/main_wgts/chart_wdt.dart';
import 'package:workouttraker/main_wgts/mainpage.dart';
import 'package:workouttraker/main_wgts/settings_wdt.dart';
import 'package:workouttraker/main_wgts/task_wtd.dart';

class ScreeenHome extends StatefulWidget {
  const ScreeenHome({super.key});

  @override
  State<ScreeenHome> createState() => _ScreeenHomeState();
}

class _ScreeenHomeState extends State<ScreeenHome> {
 int _currentSelectIndex= 0;
 final _pages=[
   const HomeScreen(),
    Chart(
    checkboxStatus: false, // Set the default value here
    currentDate: DateTime.now(),
  ),
  const Task(),
  const Settings(),
 
 ];
  @override
  Widget build(BuildContext context) {
    getAllTasks();
    return Scaffold(
      
      // backgroundColor: Color.fromARGB(225, 27, 57, 61),
      body: _pages[_currentSelectIndex],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: const Color.fromARGB(225, 27, 57, 61), selectedItemColor:  const Color.fromARGB(255, 255, 230, 189),unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),currentIndex: _currentSelectIndex,onTap:(newindex){
        setState(() {
          _currentSelectIndex=newindex;
        });
        } , items: const [
        BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Exercises',backgroundColor:Color.fromARGB(225, 27, 57, 61),  tooltip: 'Go to Home',),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Progress',backgroundColor:Color.fromARGB(225, 27, 57, 61)),
        BottomNavigationBarItem(icon: Icon(Icons.note_alt_outlined), label: 'Task',backgroundColor:Color.fromARGB(225, 27, 57, 61)),
         BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings',backgroundColor:Color.fromARGB(225, 27, 57, 61)),


      ]),
    );
  }
}



