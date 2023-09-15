// ignore_for_file: use_key_in_widget_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workouttraker/function/db_functions/db_person.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import 'package:image_picker/image_picker.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/profileedit.dart';

// --------------------------------------------------------------------
class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;

  @override
  void initState() {
    super.initState();
    _loadStoredImage();
  }

  Future<void> _loadStoredImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? imagePath = prefs.getString('profile_image');
    if (imagePath != null) {
      setState(() {
        _selectedImage = File(imagePath);
      });
    }
  }

  Future<void> _pickImage() async {
    try {
      final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          _selectedImage = File(pickedImage.path);
        });

        // Store the image path in shared preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('profile_image', pickedImage.path);
      }
    } catch (e) {
      // Handle any exceptions here
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ValueListenableBuilder<List<persondata>>(
      valueListenable: persondataListNotifier,
      builder: (context, persondatalist, _) {
        if (persondatalist.isEmpty) {
          return const CircularProgressIndicator();
        }

        final data = persondatalist[0];

        return Scaffold(
          backgroundColor: const Color.fromARGB(225, 27, 57, 61),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(225, 27, 57, 61),
            title: const Center(
              child: Text('Profile'),
            ),
             actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profileedit(
                        personname: data.personname,
                        personage: data.personage,
                        personheight: data.personheight,
                        index: 0,
                        personweight: data.personweight,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                color: Colors.white,
                iconSize: 25,
              ),
            ]
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Card(
                color: const Color.fromARGB(255, 27, 57, 61),
                child: Container(
                  height: 480,
                  width:double.infinity,
                  
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(3),bottomLeft: Radius.circular(50),topRight: Radius.circular(40),bottomRight: Radius.circular(3)),
                    color: Color.fromARGB(255, 255, 230, 189),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            
                            width: screenHeight * 0.2,
                            height: screenHeight * 0.9,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.asset('assets/images/full body.png'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      SizedBox(
                        width: screenWidth * 0.47,
                        height: screenHeight * 0.52,
                        child: Card(
                          color: const Color.fromARGB(255, 27, 57, 61),
                          child: Column(
                            children: [
                              const SizedBox(height: 5,),
GestureDetector(
  onTap: _pickImage,
  child: Container(
    width: 140,
    height: 140,
    decoration: BoxDecoration(
      border: Border.all(
        width: 5,
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      shape: BoxShape.circle,
      color: Colors.grey[300],
    ),
    child: ClipOval(
      child: Stack(
        fit: StackFit.expand,
        children: [
          _selectedImage != null
              ? Image.file(
                  _selectedImage!,
                  fit: BoxFit.cover,
                )
              : Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.grey[600],
                ), // Person icon as default image
          // if (_selectedImage == null)
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: const Icon(
                  Icons.edit,
                  size: 21,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
        ],
      ),
    ),
  ),
),
                              Card(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: Center(
                                  child: Text(                                   '''
Name: ${data.personname}
Age: ${data.personage}
Height: ${data.personweight}
Weight: ${data.personheight}               
                                    ''',
                                    style: GoogleFonts.alegreyaSc(
                                      fontSize: 25,
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],))),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}





