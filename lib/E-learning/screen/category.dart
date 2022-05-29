import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fresher_space/E-learning/icon.dart';

class Categary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CatigoryW(
                              image: 'assets/CAREER/career.png',
                              text: 'Career',
                              color: Color(0xFF000000),
                            ),

                            // MOVE TO SPLASHSCREEN
                            CatigoryW(
                              image: 'assets/student/student.png',
                              text: 'Student',
                              color: Color(0xFF43DC64),
                            ), // MOVE TO GENERATOR
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CatigoryW(
                              image: 'assets/NotesPic/sem.png',
                              text: 'Notes',
                              color: Color(0xFF7DA4FF),
                            ), // MOVE TO SCANNER
                            CatigoryW(
                              image: 'assets/QUES/Ques.png',
                              text: 'Question Paper',
                              color: Color(0xFF43DC64),
                            ), //MOVE  ABOUT US PAGE
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CatigoryW(
                              image: 'assets/images/programming.png',
                              text: 'TECH',
                              color: Color(0xFF7DA4FF),
                            ), // MOVE TO SCANNER
                            CatigoryW(
                              image: 'assets/QUES/Play.png',
                              text: 'Amplitude',
                              color: Color(0xFF7DA4FF),
                            ), //MOVE  ABOUT US PAGE
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     CatigoryW(
                        //       image: 'assets/QUES/Play.png',
                        //       text: 'Amplitude',
                        //       color: Color(0xFF7DA4FF),
                        //     ), // MOVE TO SCANNER
                        //     CatigoryW(
                        //       image: 'assets/Help.png',
                        //       text: 'Help',
                        //       color: Color(0xFF43DC64),
                        //     ), //MOVE  ABOUT US PAGE
                        //   ],
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
