// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workouttraker/sub_screens_wtd/other_SUB/create.dart';

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);

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
                        'assets/images/chin_up.jpg',
                        'Latissimus Darsi','''Step 1: Choose a suitable weight, then kneel dr.stand on the platform and grip the handles. Keep you abdominals and lower back muscles strong and slowly extend your arms until they are fully stretched Make sure that you keep your shoulders down and retracted slightly back this will help to keep the tension on your back muscles
      Step 2: Keeping the movement under control and elbows pulled down and back pull yourself back up to the start postion.Repeat for the desired number of reps.
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/wings.jpg') ,radius:31,),
                                      const SizedBox(width: 5),
                                        Text(
                                        'Chin-Up',
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
                        'assets/images/TBar bend.jpg',
                        'Latissims Dorsi','''Step 1: Straddle a T-Bar Row machine and trab the handles with an overhand grip. Make sure you are strading with your feet shoulder-width apart and your knees slight bent as shown
       Step 2:leep your back flat and bend your waist until your upper bodt is about 45 degrees from the vertical ,the bar hanging ar arms length directly below your shoulders.   
       Step 3: Then,squeezing your shoulder blades together,lift the bar as close as you can to your lower chest.Pause then slowly lower the back to the starting position.            
                        
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/wings.jpg') ,radius:31,),
                                      const SizedBox(width: 5),
                                        Text(
                                        'T Bar Bend Over',
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
                        'assets/images/dumbbellRow.jpg',
                        'Rectus Abdominis','''Step 1: Bend your knees slightly.keep back bent and straight. Hold  dumbbells to your side with neutal grip.
      Step 2:Raise th dumbbells vertically towords your chest.Refain from flaring your elbow out.Hold for one second Return to strarting  postion.
      
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/wings.jpg') ,radius:31,),
                                      const SizedBox(width: 5),
                                        Text(
                                        'Dumbbell Row ',
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
                        'assets/images/curlBarrow.jpg',
                        'Latissimus Dorisi','''Step 1: Bend your knees slightly. keep back bent and straight.Hold EZ curl bar under you with shoulder width overhand grip.
      Step 2:Raise the EZ curl bar vertically towards yours chest.Refrain from flaring your elbows out.Hold for one second. Return to srtating postion.  '''
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
                                      children:[  const CircleAvatar( backgroundImage: AssetImage('assets/images/wings.jpg') ,radius:31,),
                                      const SizedBox(width: 5),
                                        Text(
                                        'Curl Bar-Row  ',
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

  const Models({super.key, required this.mymodel});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(225, 27, 57, 61),
      ),
      body:SingleChildScrollView(
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
  // ignore: non_constant_identifier_names
  final String Text;
  // ignore: non_constant_identifier_names
  final String Text1;

  Mymodel(this.images, this.Text,this.Text1);
}
