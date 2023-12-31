// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workouttraker/view/sub_screens_wtd/other_sub/create.dart';

class Biceps extends StatelessWidget {
  const Biceps({Key? key}) : super(key: key);

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
                        'assets/images/curls.jpg',
                        'Biceps Brachii','''Step 1:  Stand with feet about hip-width apart, abs engaged as you hold medium heavy dumbbells in front of the thighs. Squeeze the biceps and bend the arms, curling the weights up towards the shoulders.
      Step 2:Keep the elbows stationary and only bring the weight as high as you can without moving the elbows. Slowly lower the weights, keeping a slight bend in the elbows at the bottom (e.g., dont lock the joints and try to keep tension on 
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/biceps.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Curls',
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
                        'assets/images/barbell curlls.jpg',
                        'Biceps Brachii ','''Step 1: Starting from the same initial position for standard bicep curl, hold the bar with both arms extended downward, gripping the bar with your palms facing up.
       Step 2:Lift the bar, but instead of keeping both elbows locked to your side and lifting in an arc, allow both elbows to move backward in order to "drag" the bar in a straight line directly up the front of body  
         
                        
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/biceps.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'BarBell Curls',
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
                        'assets/images/low pulleycarle.jpg',
                        'Pectoralis','''Step 1:Adjust two pulleys to the lowest position. Stand straight with feet shoulder width apart. Hold each handle with underhand grip.
      Step 2: Pull the pulley handles upwards until your forearms cross. Hold for one second. Return to starting position. 
      
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/biceps.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Lopulley carle cross',
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
                        'assets/images/Dumbbell Becers.jpg',
                        'Latissimus Dorisi','''Step 1: Bend your knees slightly. keep back bent and straight.Hold EZ curl bar under you with shoulder width overhand grip.
      
      Step 2:Raise the EZ curl bar vertically towards yours chest.Refrain from flaring your elbows out.Hold for one second. Return to srtating postion. 
      Step 3:Bending at the elbow, curl the dumbbell up to shoulder level and pause momentarily before slowly lowering the weight to the starting position. '''
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/biceps.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Dumbbell biceps ',
                                         style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
               
                                      ),]
                                    )
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // ----------------------------------------5
             GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                        'assets/images/concentration.jpg',
                        'Biceps Brachii','''Step 1: Bend your knees slightly. keep back bent and straight.Hold EZ curl bar under you with shoulder width overhand grip.
      Step 2:Lean forward so your torso is over your legs, and place the left hand on the left knee.
      
      Step 3:Raise the EZ curl bar vertically towards yours chest.Refrain from flaring your elbows out.Hold for one second. Return to srtating postion.  '''
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/biceps.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Concentration Curls',
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
