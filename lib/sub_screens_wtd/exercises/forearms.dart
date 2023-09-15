// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workouttraker/sub_screens_wtd/other_SUB/create.dart';

class Forearms extends StatelessWidget {
  const Forearms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 360 ?26 : 18;
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(225, 27, 57, 61),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            // --------------------------------------------------------1
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                        'assets/images/DumbbellWristTwist.jpg',
                        'Wrist Extensor','''Step 1:Stand with Light Dumbbell in each hand with your arms at your sides, palms facing behind you. Bend your arms to curl the weights up until your forearms are parallel to the floor. This is the starting position.
      Step 2: Rotate your wrists until your palms face the ceiling, then back so your the floor once again. Thats one repetition.
                        '''
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(left:15,top: 5,bottom: 5),
                 width: double.infinity,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      border: Border.all(
                                          color: const Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/forearms.jpg') ,radius:31,),
                                        const SizedBox(width: 5,),
                                        Text(
                                        'Dumbbell WristTwist',
                                        style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
               
                                      ),]
                                    )
              ),
            ),
            const SizedBox(
                height: 5,
              ),
            // -------------------------------------2
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                        'assets/images/StandingWristCurl.jpg',
                        'Wrist Extensor ','''Step 1:Grab a barbell behind using an underhand grip while keeping your arms straight. Hang the barbell so that it rests on your extended fingers.
      Step 2:Flex your wrists to raise the barbell up as high as possible   
      Step 3:Reverse the movement to lower the barbell.          
                        
                        '''
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(left:15,top: 5,bottom: 5),
                width: double.infinity,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      border: Border.all(
                                          color: const Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/forearms.jpg') ,radius:31,),
                                        const SizedBox(width: 5,),
                                        Text(
                                        'Standing WristCurl',
                                         style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
               
                                      ),]
                                    )
              ),
            ),
            const SizedBox(
                height: 5,
              ),
            // -------------------------------------------------3
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                        'assets/images/WristCurls.jpg',
                        'Wrist Extensor','''Step 1:Sit with your forearms resting on your thighs or on a bench. Take an underhand grip on the bar with your wrists passively extended Inhale and curl your wrist up.
      Step 2:Exhale as you complete the movement.
      
                        '''
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(left:15,top: 5,bottom: 5),
                width: double.infinity,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      border: Border.all(
                                          color: const Color.fromARGB(255, 255, 255, 255)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/forearms.jpg') ,radius:31,),
                                        const SizedBox(width: 5,),
                                        Text(
                                        'WristCurls ',
                                        style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
               
                                      ),]
                                    )
              ),
            ),
            // -------------------------------------------------4
          
          ],
        ),
      ),
    );
  }
}

class ModelsPage extends StatelessWidget {
  final Mymodel mymodel;

  // ignore: use_key_in_widget_constructors
  ModelsPage({required this.mymodel});

  @override
  Widget build(BuildContext context) {
    return Models(
      mymodel: mymodel,
    );
  }
}

class Models extends StatelessWidget {
  final Mymodel mymodel;

  const Models({super.key, required this.mymodel});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(225, 27, 57, 61),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
              Center(
                child: SizedBox(
                  width: 300, // Adjust the width as needed
                  height:150, // Adjust the height as needed
                  child: Image.asset(
                    mymodel.images,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Muscle: ${mymodel.Text}',
                  style: GoogleFonts.alegreyaSc(fontSize: 26,fontStyle: FontStyle.italic),
                  
                ),
              ),
              const SizedBox(height: 20,),
               Text(
                 ' ${mymodel.Text1}',
                 style: GoogleFonts.acme(fontSize: 20,fontStyle: FontStyle.italic),
               ),
               Row(
              
                mainAxisAlignment: MainAxisAlignment.end,
                children: [FloatingActionButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder:(context) => const Textng(),));
                  
                },backgroundColor: Colors.black,child: const Icon(Icons.add),),
                 const SizedBox(width: 15,),]
                ),
               
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Mymodel {
  final String images;
   // ignore: non_constant_identifier_names
  final String Text;
  // ignore: non_constant_identifier_names
  final String Text1;

  Mymodel(this.images, this.Text,this.Text1);
}

