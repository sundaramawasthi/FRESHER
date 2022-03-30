import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresher_space/StudentExplore/Subject/FIRST/Bookcard1.dart';
import 'package:fresher_space/StudentExplore/Subject/FIRST/BooksCard2.dart';
import '../../../TechExplore/techlearner/devops/main.dart';
import 'Math.dart';
import 'clipper.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 40),
                height: 380,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFF0F2027),
                      Color(0xFF203A43),
                      Color(0xFF2C5364),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            size: 35,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        const Text(
                          " \n FIRST YEAR",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            CupertinoIcons.arrow_down_circle_fill,
                            size: 35,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 20.0),
                      margin: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF080808),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                "Hi!",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "Welcome to \nFresherSpace \nContinue your \nLearning",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "SYLLABUS",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/Books.jpg',
                            fit: BoxFit.fitHeight,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        "TOPIC",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  const BookCard1(
                    title: "Math-1 ",
                    subtitle: "AKTU 1-YEAR",
                    rating: 0,
                    imgUrl: 'assets/compilier.png',
                  ),
                  BookCard2(
                    title: "Physics",
                    subtitle: "AKTU - 1-YEAR",
                    rating: 0,
                    imgUrl: 'assets/compilier.png',
                  ),
                  const BookCard(
                    title: "PPS",
                    subtitle: "AKTU - 1-YEAR",
                    rating: 0,
                    imgUrl: 'assets/compilier.png',
                  ),
                  const BookCard(
                    title: "CHEMIST",
                    subtitle: "AKTU - 1-YEAR",
                    rating: 0,
                    imgUrl: 'assets/DBMS.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
