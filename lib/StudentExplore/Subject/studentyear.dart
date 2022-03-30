import 'package:flutter/material.dart';
import 'package:fresher_space/StudentExplore/Subject/FIRST/main.dart';
import 'package:fresher_space/StudentExplore/Subject/Fourth/main.dart';
import 'package:fresher_space/StudentExplore/Subject/Secound/main.dart';
import 'package:fresher_space/StudentExplore/Subject/Thired/main.dart';

import 'icon.dart';

class yearlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YEAR  DASHBOARD",
          style: TextStyle(fontSize: 23, color: Colors.red),
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
      ),
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0x000000ff),
      // bottomNavigationBar: Container(
      //   height: 71,
      //   width: double.infinity,
      //   padding: EdgeInsets.all(4),
      //   color: Color(0x000000ff),
      //   child: Padding(
      //     padding: const EdgeInsets.only(bottom: 3),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         // ElevatedButton(
      //         //   onPressed: () {
      //         //     Navigator.push(
      //         //       context,
      //         //       MaterialPageRoute(builder: (context) => Studenthome()),
      //         //     );
      //         //   },
      //         //   child: Image.asset(
      //         //     'assets/Guidesus.png',
      //         //     height: 50,
      //         //     width: 100,
      //         //   ),
      //         // ), //MOVE TO SPLASH SCEEN
      //         // ElevatedButton(
      //         //   onPressed: () {
      //         //     Navigator.push(
      //         //         context,
      //         //         MaterialPageRoute(
      //         //             builder: (context) =>
      //         //                 Studenthome())); // MOVE TO SCANNER MENU
      //         //   },
      //         //   child: Image.asset(
      //         //     'assets/Guidesus.png',
      //         //     height: 50,
      //         //     width: 100,
      //         //   ),
      //         // ), // MOVR TO SCANNER MENU
      //         // // ElevatedButton(
      //         // //   onPressed: () {
      //         // //     Navigator.push(context,
      //         // //         MaterialPageRoute(builder: (context) => MyHomePage()));
      //         // //   },
      //         // //   child: Image.asset(
      //         // //     'assets/Guidesus.png',
      //         // //     height: 60,
      //         // //     width: 40,
      //         // //   ),
      //         // // ), // MOVE TO IFO PAGE
      //       ],
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: Size.height,
            child: Image.asset(
              'assets/images4.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Transform.rotate(
            origin: Offset(30, -40),
            angle: 2.6,
            child: Container(
              margin: const EdgeInsets.only(
                left: 90,
                top: 90,
              ),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [Color(0x000000ff), Color(0x000000ff)],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Size.height / 20, bottom: Size.height / 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Expanded(
                //   flex: 1,
                //   child: Text(
                //     'Welcome to Year Dashboard , Here you can find year wise Syllabus \n question papes and faculty Guidance \n Kindly select your year for furture proceed ',
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 10,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                Expanded(
                  flex: 10,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => First()));
                            },
                            child: CatigoryW(
                              image: 'assets/Networking.png',
                              text: 'CSE Year - 1 ',
                              color: Color(0xFF47B4FF),
                            ),
                          ), // MOVE TO SPLASHSCREEN
                          // MOVE TO GENERATOR
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
                                      builder: (context) => Secound()));
                            },
                            child: CatigoryW(
                              image: 'assets/DBMS.png',
                              text: 'CSE Year - 2',
                              color: Color(0xFF43DC64),
                            ),
                          ), // MOVE TO SPLASHSCREEN
                          // MOVE TO GENERATOR
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
                                      builder: (context) => Thired()));
                            },
                            child: CatigoryW(
                              image: 'assets/Oops.png',
                              text: 'CSE Year - 3 ',
                              color: Color(0xFF47B4FF),
                            ),
                          ), // MOVE TO SPLASHSCREEN
                          // MOVE TO GENERATOR
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
                                      builder: (context) => Fourth()));
                            },
                            child: CatigoryW(
                              image: 'assets/operating.png',
                              text: 'CSE Year - 4  ',
                              color: Color(0xFF43DC64),
                            ),
                          ), // MOVE TO SPLASHSCREEN
                          // MOVE TO GENERATOR
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
