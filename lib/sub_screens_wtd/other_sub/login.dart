import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:workouttraker/function/db_functions/db_person.dart';
import 'package:workouttraker/main_wgts/bottom_main.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _personheightController = TextEditingController();
  final _personweightController = TextEditingController();
  final _personageController = TextEditingController();

  LoginScreen({super.key});

  String? _validateTextField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  Future<void> onAddTaskButtonPressed(BuildContext context) async {
    final personname = _nameController.text.trim();
    final personheight = _personheightController.text.trim();
    final personweight = _personweightController.text.trim();
    final personage = _personageController.text.trim();

    if (personname.isEmpty ||
        personage.isEmpty ||
        personheight.isEmpty ||
        personweight.isEmpty) {
      return;
    }

    final task = persondata(
      personname: personname,
      personage: personage,
      personweight: personweight,
      personheight: personheight,
      
    );

    addperson(task); // Assuming addperson is an asynchronous function
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ScreeenHome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      backgroundColor: const Color.fromARGB(225, 27, 57, 61),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ Center(
                    child: Lottie.asset('assets/images/datas.json.json'),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: _nameController,
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
                          const SizedBox(height: 20),
                          TextFormField(
                            maxLength: 3,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                            ],
                            controller: _personheightController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: 'Weight',
                              filled: true,
                              fillColor: const Color.fromARGB(255, 255, 255, 255),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: _validateTextField,
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            maxLength: 3,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                            ],
                            controller: _personweightController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: 'Height',
                              filled: true,
                              fillColor: const Color.fromARGB(255, 255, 255, 255),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: _validateTextField,
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            maxLength: 3,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                            ],
                            controller: _personageController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: 'Age',
                              filled: true,
                              fillColor: const Color.fromARGB(255, 255, 255, 255),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            validator: _validateTextField,
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 250,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  onAddTaskButtonPressed(context);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: const StadiumBorder(),
                              ),
                              child: const Text('Submit'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------------------ep

