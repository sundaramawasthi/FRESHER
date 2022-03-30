import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.redAccent, Colors.black])),
              child: Container(
                width: double.infinity,
                height: 200.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("user.png"),
                        radius: 45.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "User Name",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              )),
          Container(
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              elevation: 8.0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: const Text(
                              "History",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Download",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Progress",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // child: Padding(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Text(
            //         "Bio:",
            //         style: TextStyle(
            //             color: Colors.redAccent,
            //             fontStyle: FontStyle.normal,
            //             fontSize: 28.0),
            //       ),
            //       SizedBox(
            //         height: 10.0,
            //       ),
            //       Text(
            //         'My name is Alice and I am  a freelance mobile app developper.\n'
            //         'if you need any mobile app for your company then contact me for more informations',
            //         style: TextStyle(
            //           fontSize: 22.0,
            //           fontStyle: FontStyle.italic,
            //           fontWeight: FontWeight.w300,
            //           color: Colors.black,
            //           letterSpacing: 2.0,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
          const SizedBox(
            height: 429.0,
          ),
          Container(
            width: 300.00,
            child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.redAccent, Colors.pinkAccent]),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Help",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
