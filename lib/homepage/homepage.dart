import 'package:flutter/material.dart';

import '../PROFILE/profile.dart';
import '../StudentExplore/homepage.dart';
import '../TechExplore/techhome.dart';
import 'homeicon.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFFF),
      bottomNavigationBar: Container(
        height: 71,
        width: double.infinity,
        padding: EdgeInsets.all(4),
        color: Color(0xFFFFFF),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Image.asset(
                  'assets/Guidesus.png',
                  height: 50,
                  width: 100,
                ),
              ), //MOVE TO SPLASH SCEEN
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProfileApp())); // MOVE TO SCANNER MENU
                },
                child: Image.asset(
                  'assets/user.png',
                  height: 50,
                  width: 100,
                ),
              ), // MOVR TO SCANNER MENU
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => MyHomePage()));
              //   },
              //   child: Image.asset(
              //     'assets/Guidesus.png',
              //     height: 60,
              //     width: 40,
              //   ),
              // ), // MOVE TO IFO PAGE
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Transform.rotate(
                origin: Offset(30, -40),
                angle: 2.6,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 90,
                    top: 90,
                  ),
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      colors: [Color(0x000000ff), Color(0xFFFD44C4)],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 42),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Fresher_Space ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Studenthome()));
                              },
                              child: CatigoryW(
                                image: 'assets/Guidesus.png',
                                text: 'ARE U STuDENT ',
                                color: Color(0xFF47B4FF),
                              ),
                            ), // MOVE TO SPLASHSCREEN
                            // MOVE TO GENERATOR
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => techhome()),
                                );
                              },
                              child: CatigoryW(
                                image: 'assets/Guidesus.png',
                                text: 'Explorer Career',
                                color: Color(0xFF43DC64),
                              ),
                            ), // MOVE TO SCANNER
                            //MOVE  ABOUT US PAGE
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()),
                                );
                              },
                              child: CatigoryW(
                                image: 'assets/Guidesus.png',
                                text: 'learn Tech',
                                color: Color(0xFF47B4FF),
                              ),
                            ), // MOVE TO SCANNER
                            //MOVE  ABOUT US PAGE
                          ],
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     GestureDetector(
                        //       onTap: () {
                        //         Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //                 builder: (context) => DIctinary()));
                        //       },
                        //       child: CatigoryW(
                        //         image: 'assets/dict.jpg',
                        //         text: 'DICTONARY APP',
                        //         color: Color(0xFF7DA4FF),
                        //       ),
                        //     ), // MOVE TO SCANNER
                        //     //MOVE  ABOUT US PAGE
                        //   ],
                        // ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
