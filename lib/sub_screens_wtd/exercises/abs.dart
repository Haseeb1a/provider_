// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workouttraker/sub_screens_wtd/other_sub/create.dart';


class Abs extends StatelessWidget {
  const Abs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width > 360 ?26 : 18;
    //  String dropdownValue = 'Dog';
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
                          'Rectus Abdominis',
                          '''Step 1: Lie back in the decline bench Position hands overhead.kness are bent.
      Step 2: Raise your upper body upward while keeping your lower back on the bench .Hold for one second .Return to starting position .
                        '''),
                    ),
                  ),
                );
              },
              child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 0, 0),
                    border:
                        Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png'),
                          radius: 31,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Incline Bench Sit-Up',
                          style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
                        ),
                      ])),
            ),
            const SizedBox(
              height: 5,
            ),
            // Divider(),
            // -------------------------------------2
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ModelsPage(
                      mymodel: Mymodel(
                          'assets/images/crunches.jpg',
                          'Rectus Abdominis',
                          '''Step 1: While lying on your back Straigten your legs,raise your heels an inch off the floor,and place your hands by your sides.
       Step 2:Keeping your arms parallel to the floor lift your torso and legs so they form a e.As yourself ,bend your knees and pull them up torward your chest .                     
                        
                        '''),
                    ),
                  ),
                );
              },
              child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 0, 0),
                    border:
                        Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png'),
                          radius: 31,
                        ),
                        // children:[  CircleAvatar( backgroundImage: AssetImage('assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png') ,radius:33,),

                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Crunches',
                          style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
                        ),
                      ])),
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
                          'assets/images/twisting 1.jpg',
                          'Rectus Abdominis',
                          '''Step 1: Lie on a banch with legs extended straight.and hold on to the top of the bench.
      Step 2:Raise your legs straight up,slighty lifting your lower back off the bench.
      Step 3:Hold for a fee seconds,then lower your legs back down to the start postion. Keep your legs straight throughout the motion
                        '''),
                    ),
                  ),
                );
              },
              child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 0, 0),
                    border:
                        Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png'),
                          radius: 31,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Twistiing Hip-Raise',
                          style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
                        ),
                      ])),
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
                          'assets/images/twisiting2.jpg',
                          'Rectus Abdominis',
                          '''Step 1: Lie on your back with your hands underneth you tailbone and have yours legs straight upward,as illustrated
      Step 2: Pull your navel inward and flex your glutes as you lift your hips just a few inches the floor.then lower your hips '''),
                    ),
                  ),
                );
              },
              child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 0, 0),
                    border:
                        Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/131-1319291_six-pack-abs-gym-muscles-clipart-sticker-cartoon.png'),
                          radius: 31,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Twistiing Hip-Raise 2',
                          style: GoogleFonts.alegreyaSc(fontSize: fontSize,color: Colors.white),
                        ),
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}

class ModelsPage extends StatelessWidget {
  final Mymodel mymodel;

  const ModelsPage({super.key, required this.mymodel});

  @override
  Widget build(BuildContext context) {
    return Models(
      mymodel: mymodel,
    );
  }
}

class Models extends StatefulWidget {
  final Mymodel mymodel;

  Models({super.key, required this.mymodel});

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
              const SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  width: 300, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  child: Image.asset(
                    widget.mymodel.images,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Muscle: ${widget.mymodel.Text}',
                  style: GoogleFonts.alegreyaSc(
                      fontSize: 26, fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' ${widget.mymodel.Text1}',
                  style: GoogleFonts.acme(
                      fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Textng(),
                        ));
                  },
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 15,
                ),
              ]),
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

  Mymodel(this.images, this.Text, this.Text1);
}
// ---------------------------------------------------------------



