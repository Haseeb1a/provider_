// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/create.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

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
                        'assets/images/lncline .jpg',
                        'Rectus Abdominis','''Step 1:  Lie back on the decline bench. Position hands overhead. Knees are bent.
      Step 2:Raise your upper body upward while keeping your lower back on the bench. Hold for one second. Return to starting position
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/all.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Incline Bench Sit-Up',
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
                        'assets/images/SideBridge.jpg',
                        'Muscle Obliques','''Step 1:  Lie on your side. Make sure one leg is on top of the other. Position the forearm on the floor perpendicular with your body.
      Step 2:Use your forearm to lift your upper body of the ground. The other arm is placed on the side of your body. Your body should be straight. Only your forearm and the side of your foot should be touching the floor. Hold this position.   
           
                        
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/all.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Side Bridge',
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
                        'assets/images/DeadLiftLast.jpg',
                        'Latissimus Dorsi','''Step 1:  Stand with your feet hip-distance apart and bend down in sitting motion until your thighs are parallel to the floor. Keep your back straight and make sure that your spine is as close to the neutral position as possible. Take an overhand grip on the bar with your hands slightly wider than a shoulder-width apart.
      Step 2:Exhale, draw your abdominal muscles in, and lift the bar by pushing up throliga your legs.
      Step 3: As the bar reaches your knees during the lift phase, push your hips forward to raise your torso so that you are Standing tall with your arms by your sides and the bar resting on your thighs.
      Step 4: Hold the position for two seconds, inhale and return the weight to the floor.
      
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/all.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Dead Lifts',
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
                        'assets/images/Push-ups.jpg',
                        'Pectoralis','''Step 1:Lie prone with your arms straight, your palms flat on the floor, and your hands shoulder-width apart (or wider).
      Step 2: Hold your feet together or very slightly spread: Inhale and bend your elbows to bring your torso near the floor, avoiding extreme hyperextension of your spine Push yourself back to arms, extended position, exhaling as you complete the movement.  '''
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
                                      children:[ const  CircleAvatar( backgroundImage: AssetImage('assets/images/all.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Push -Up ',
                                          style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
               
                                      ),]
                                    )
              ),
            ),
                  const SizedBox(
              height: 5,
            ),
            // ---------------------5
             GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                        'assets/images/StabilityBallFrenchPress.jpg',
                        'Triceps Brachii','''Step 1: Lay backward on a stability ball and centre your back on it. Hold a dumbbell in your arms and straighten it over your chest.
      Step 2: Bend your elbows, bringing the dumbbell down to the center of your head.
      Step 3: Straighten your arms, raising the dumbbell back to the start position.
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/all.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'StabilityBallPullOver',
                                          style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
               
                                      ),]
                                    )
              ),
            ),
                 const SizedBox(
              height: 5,
            ),
            //-------------------------------6
             GestureDetector(
              
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                        'assets/images/Dumeellshrugs.jpg',
                        'Muscle:Pectoralis','''Step 1: Stand upright and hold two fairly Heavy dumbbells at your sides, with your palms facing each other (neutral-grip).
      
      Step 2: Keep your shoulders relaxed Shrug your shoulders as if you were trying to touch them to your ears.
      
      Step 3: Hold the top most position, then gradually lower them to the starting position. Do not bend your elbows or shift your head forward during the motion. Repeat '''
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
                                      children:[ const  CircleAvatar( backgroundImage: AssetImage('assets/images/all.jpg') ,radius:31,),
                                      const SizedBox(width: 5,),
                                        Text(
                                        'Dumeell shrugs ',
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

class Models extends StatefulWidget {
  final Mymodel mymodel;

  Models({required this.mymodel});

  @override
  State<Models> createState() => _ModelsState();
}

class _ModelsState extends State<Models> {
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
                    widget.mymodel.images,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Muscle: ${widget.mymodel.Text}',
                  style: GoogleFonts.alegreyaSc(fontSize: 26,fontStyle: FontStyle.italic),
                  // style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(
                   ' ${widget.mymodel.Text1}',
                   style: GoogleFonts.acme(fontSize: 20,fontStyle: FontStyle.italic),
                 ),
               ),
               Row(
              
                mainAxisAlignment: MainAxisAlignment.end,
                children: [FloatingActionButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder:(context) =>const  Textng(),));
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