import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:workouttraker/function/db_functions/db_functions.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';

class UpdateScreen extends StatefulWidget {
  final String typename;
  final String weight;
  final String sets;
  final String reps;
  final int index;
  final DateTime date;
  final String duration;
  final bool isChecked; 

  const UpdateScreen({
    Key? key,
    required this.typename,
    required this.weight,
    required this.sets,
    required this.index,
    required this.date,
    required this.duration,
    required this.reps,
    required this.isChecked, 
  }) : super(key: key);

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final _formKey = GlobalKey<FormState>();
  final _typenameController = TextEditingController();
  final _weightController = TextEditingController();
  final _setsController = TextEditingController();
  final _repsController = TextEditingController();
  final _dateController = TextEditingController();
  final _dropdownController = TextEditingController();
  String _selectedValue = 'Day';

  @override
  void initState() {
    super.initState();
    _typenameController.text = widget.typename;
    _weightController.text = widget.weight;
    _setsController.text = widget.sets;
    _repsController.text = widget.reps; 
    _dateController.text = DateFormat('yyyy-MM-dd').format(widget.date);
    _dropdownController.text = widget.duration;
    // _isChecked = widget.isChecked;
  }
  

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }
  String? _validateTextField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(225, 27, 57, 61)),
      body: AlertDialog(
        backgroundColor: const Color.fromARGB(225, 27, 57, 61),
        title: const Text('Update Task'),

        content: SizedBox(
          height: 380,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _typenameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'TYPE NAME',
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: _validateTextField,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _weightController,
                    maxLength: 3,
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      hintText: 'KG',
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                      validator: _validateTextField,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _setsController,
                    maxLength: 3,
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      hintText: 'SETS',
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                      validator: _validateTextField,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _repsController,
                    maxLength: 3,
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      hintText: 'REPS',
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                      validator: _validateTextField,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      // labelText: 'Date',
                      filled: true,
                      prefixIcon: const Icon(Icons.calendar_today),
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    readOnly: true,
                    onTap: _selectDate,
                      validator: _validateTextField,
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton<String>(
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsetsDirectional.all(3),
                          borderRadius: BorderRadius.circular(15),
                          value: _dropdownController.text,
                          items: <String>['Day', 'Week', 'Month']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(fontSize: 15),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedValue = newValue!;
                              _dropdownController.text = _selectedValue;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
               if (_formKey.currentState!.validate()){
                  //  print('Updating task at index: ${widget.index}');
              Workoutmodel studentmodel = Workoutmodel(
                id: widget.index,
                typename: _typenameController.text,
                weight: _weightController.text,
                sets: _repsController.text,
                reps: _setsController.text,
                // sets: _setsController.text,
                date: DateTime.parse(_dateController.text),
                duration: _dropdownController.text,
                // isChecked: widget.isChecked,
               // isChecked: isChecked, 
              );

              updateTask(widget.index, studentmodel);
              Navigator.pop(context);
            }},
            color: Colors.white,
            child: const Text('UPDATE'),
          )
        ],
      ),
    );
  }
}