import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/profileedit.dart';
import '../../function/db_functions/db_person.dart';
import '../../model/person_model/persondata.dart';

class Profile extends StatefulWidget {
  final void Function(String?) onProfileImageChanged;

  const Profile({Key? key, required this.onProfileImageChanged})
      : super(key: key);

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

        // Call the callback to notify the parent widget (MyDrawer) of the image change
        widget.onProfileImageChanged(pickedImage.path);
      }
    } catch (e) {
      // Handle any exceptions here
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return ValueListenableBuilder<List<persondata>>(
      valueListenable: persondataListNotifier,
      builder: (context, persondatalist, _) {
        if (persondatalist.isEmpty) {
          return const CircularProgressIndicator();
        }

        final data = persondatalist[0];

        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 230, 189),
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
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: const Color.fromARGB(225, 27, 57, 61),
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
                                    ),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        SizedBox(
                          child: Container(
                            height: 370,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(3),
                                bottomLeft: Radius.circular(50),
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(3),
                              ),
                              border: Border.all(
                                color: const Color.fromARGB(224, 255, 255,
                                    255), // Set your desired border color here
                                width: 2.0, // Set the border width
                              ),
                              color: const Color.fromARGB(255, 255, 230, 189),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Shadow color
                                  spreadRadius: 3.7, // Spread radius
                                  blurRadius: 7, // Blur radius
                                  offset: const Offset(
                                      1, 3), // Offset in x and y directions
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '''
Name: ${data.personname}
Age: ${data.personage}
Weight: ${data.personheight} 
Height: ${data.personweight}
              
                                    ''',
                                      style: GoogleFonts.acme(
                                        fontSize: 25,
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
