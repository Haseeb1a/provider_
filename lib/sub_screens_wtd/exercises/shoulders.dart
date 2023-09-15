// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workouttraker/sub_screens_wtd/other_SUB/create.dart';

class Shoulder extends StatelessWidget {
  const Shoulder({Key? key}) : super(key: key);

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
                        'assets/images/BackPresses.jpg',
                        ' Deltoids','''Step 1:Start by sitting on the bench (with back support). Grasp the barbell using an overhand grip. Hold the dumbbells above the shoulders slightly in front of you, pointing the elbows towards the floor.
      Step 2: Push the barbell up and overhead so that the arms are fully extended. After a pause lower the weights to the starting position.
      
                        '''
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(left:15,top: 5,bottom: 5),
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/shoulders.jpg') ,radius:31,),
                                        const SizedBox(width: 5,),
                                        Text(
                                        'Back Presses',
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
                        'assets/images/BarbellFrontRaises.jpg',
                        'Deltoids','''Step 1:Stand with your legs slightly spread. Take and overhand grip on barbell and rest the barbell on your thighs.
      Step 2:Keep your back straight and your abdominals contracted: Inhale and raise the barbell forward with your arms straight until it reaches eye level. Exhale as you complete the movement.
           
                        
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/shoulders.jpg') ,radius:31,),
                                        const SizedBox(width: 5,),
                                        Text(
                                        'BarbellFrontRaises',
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
                        'assets/images/ArnoldPress.jpg',
                        'Deltoids','''Step 1:Sit on a flat bench and hold a pair of dumbbells at the level of your shoulders. Your palms should be facing the inward, and your elbows should point to the side 
      Step 2:Turn both of your wrist outward until your alms face away from you. At the same time, ully extend arms overhead. Hold for one second. Return to the starting position.
      
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/shoulders.jpg') ,radius:31,),
                                        const SizedBox(width: 5,),
                                        Text(
                                        'Arnold Press',
                                      style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
               
                                      ),]
                                    )
              ),
            ),
            const SizedBox(
                height: 5,
              ),
            // -------------------------------------------------4
               GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                        'assets/images/MilitaryPressStranding.jpg',
                        'Deltoids','''Step 1:Standing upright, hold a barbell behind your head at shoulder height with your hands shoulder width elbows bent, and palms facing forward
      Step 2: Press the barbell overhead, extending your arms fully. Keep your back straight and remain upright throughout the movement.
      
      
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/shoulders.jpg') ,radius:31,),
                                        const SizedBox(width: 5,),
                                        Text(
                                        'MilitaryPressStrand',
                                         style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
               
                                      ),]
                                    )
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}

class ModelsPage extends StatelessWidget {
  final Mymodel mymodel;

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

  Models({required this.mymodel});

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
                  // style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
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
  final String Text;
  final String Text1;

  Mymodel(this.images, this.Text,this.Text1);
}
