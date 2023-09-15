import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workouttraker/function/db_functions/db_person.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profileedit extends StatefulWidget {
  
  final String personname;
  final String personage;
  final String personweight;
  final String personheight;
  final String? personImage;
  final int index;
  const Profileedit({
    Key? key,
    required this.personname,
    required this.personage,
    required this.personheight,
    required this.index,
    required this.personweight,
    this.personImage,
    
  }): super(key: key);

  @override
  State<Profileedit> createState() => _ProfileeditState();
  
}

class _ProfileeditState extends State<Profileedit> {
  String? _profileImagePath;
 

  Future<void> _loadProfileImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? imagePath = prefs.getString('profile_image');
    setState(() {
      _profileImagePath = imagePath;
    });
  }
  final _formKey = GlobalKey<FormState>();
  final _personnamecontroller = TextEditingController();
  final _wpersonageController = TextEditingController();
  final _personweightController = TextEditingController();
  final _personheightController = TextEditingController();
  final _imageController = TextEditingController();
   @override
  void initState() {
    super.initState();
    _personnamecontroller.text = widget.personname;
    _wpersonageController.text = widget.personage;
    _personweightController.text = widget.personweight;
    _personheightController.text = widget.personheight;
    _loadProfileImage();
  }
  String? _validateTextField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(225, 27, 57, 61) ,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            color:   const Color.fromARGB(255, 255, 230, 189),
            child: SingleChildScrollView(
              child: Form(
               key: _formKey,
                child: Column(
                  children: [
                    // Spacer to push content below the status bar
                    SizedBox(height: MediaQuery.of(context).padding.top),
                    // TextField #1
                    Padding(
                     padding: const EdgeInsets.fromLTRB(8.0, 250.0, 8.0, 0.0),
                      child: TextFormField(
                        controller:_personnamecontroller ,
                        decoration: InputDecoration(
                          
                          hintText: 'Name',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: _validateTextField,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // TextField #2
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                       // Adjust margin values as needed
                      child: TextFormField(
                        controller:_wpersonageController ,
                        maxLength: 3,
                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: 'age',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                            validator: _validateTextField,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                       // Adjust margin values as needed
                      child: TextFormField(
                        controller: _personheightController,
                        maxLength: 3,
                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: 'weight',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                            validator: _validateTextField,
                      ),
                      
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                       // Adjust margin values as needed
                      child: TextFormField(controller:_personweightController ,
                        maxLength: 3,
                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: 'Height ',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                            validator: _validateTextField,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                     ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()){
                persondata studentmodel = persondata(
                  id: widget.index,
                  personname: _personnamecontroller.text,
                  personage: _wpersonageController.text,
                  personweight: _personweightController.text,
                  personheight: _personheightController.text,
                  personImage: _personnamecontroller.text,
                  );
                       updateperson(widget.index, studentmodel);
                Navigator.pop(context);
                // Button's onPressed action
                          }},
                          child: const Text('UPDATE'),
                          style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(225, 27, 57, 61), // Set the button's color here
                // You can also customize other button properties here
                // such as text color, padding, etc.
                          ),
                        ),
                      
                  ],
                ),
              ),
            ),
          ),
          Container(
          
              color: const Color.fromARGB(225, 27, 57, 61),
            
            
            // child: Text('jvhjh'),
            width: double.infinity,
            height: 150,
            
          ),
          Positioned(
            
            top: 50,
            left: screenWidth / 2 - 100,
            child:
            
            Container(
  decoration: BoxDecoration(
    border: Border.all(width: 7, color: const Color.fromARGB(255, 255, 255, 255)),
    borderRadius: BorderRadius.circular(100),
  ),
  alignment: Alignment.center,
  margin: const EdgeInsets.only(top: 0),
  child: Stack(
    children: [
       CircleAvatar(
        backgroundColor: Colors.grey[300],
  radius: 90,
  backgroundImage: _profileImagePath != null
      ? FileImage(File(_profileImagePath!))
      : null, // No background image when using the default person icon
  child: _profileImagePath == null
      ? Icon(
        
          Icons.person,
          size: 120,
          color: Colors.grey[700],
        )
      : null,
)
    ],
  ),
),
          ),
        ],
      ),
    );
  }
}