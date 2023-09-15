import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workouttraker/main_wgts/home_ex.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/darwerprofile.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _profileImagePath;

  @override
  void initState() {
    super.initState();
    _loadProfileImage();
  }

  Future<void> _loadProfileImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? imagePath = prefs.getString('profile_image');
    setState(() {
      _profileImagePath = imagePath;
    });
  }

  // Define the callback function to update the profile image
  void onProfileImageChanged(String? imagePath) {
    setState(() {
      _profileImagePath = imagePath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(225, 27, 57, 61),
        title: const Text('Exercises'),
        actions: [
          if (_profileImagePath != null)
            Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: FileImage(File(_profileImagePath!)),
              ),
            ),
        ],
      ),
      drawer: MyDrawer(onProfileImageChanged: onProfileImageChanged),
      body: const HomeEx(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final void Function(String?) onProfileImageChanged;

  const MyDrawer({super.key, required this.onProfileImageChanged});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: Profile(onProfileImageChanged: onProfileImageChanged),
      ),
    );
  }
}