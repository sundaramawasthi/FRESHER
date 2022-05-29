import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../config.dart';
import '../../fliptle.dart';
import '../front.dart';
import '../inner.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final StreamController controller;

  /// Link and there function start here ///

  /// Apply for the campus link
  static const String _url = 'https://www.freshersnow.com/off-campus-drives/';

  /// apply for the campus function
  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  /// Pursuing higher degree link
  static const String _url1 =
      'https://www.we-heart.com/2021/09/23/4-next-steps-for-pursuing-higher-education/';

  /// pursuing higher degree function
  void _launchURL1() async {
    if (!await launch(_url1)) throw 'Could not launch $_url';
  }

  /// Get proffesinal cirtificate link
  static const String _url2 =
      'https://9to5job.in/best-short-term-courses-after-btech-cse-ece-it/';

  ///  Get proffesinal cirtificate function
  void _launchURL2() async {
    if (!await launch(_url2)) throw 'Could not launch $_url';
  }

  /// find an intership link
  static const String _url3 = 'https://fresherspace.netlify.app/intership.html';

  ///  find an intership function
  void _launchURL3() async {
    if (!await launch(_url3)) throw 'Could not launch $_url';
  }

  /// Apply for upsc
  static const String _url4 = 'https://www.upsc.gov.in/apply-online';

  /// apply for upsc
  void _launchURL4() async {
    if (!await launch(_url4)) throw 'Could not launch $_url';
  }

  /// Study buisiness and management
  static const String _url5 =
      'https://www.futurelearn.com/subjects/business-and-management-courses';

  /// Business and management function
  void _launchURL5() async {
    if (!await launch(_url5)) throw 'Could not launch $_url';
  }

  /// Study Abord link
  static const String _url6 =
      'https://www.idp.com/india/virtual-office/?utm_source=google.com&utm_campaign=google_virtual_compe&gclid=Cj0KCQjwgYSTBhDKARIsAB8Kukv4EOd0WxGTzUYaRwyoFiIwSKgw4zIhnYRlAM4b4kpUlIqdAsrpijoaAhvmEALw_wcB&gclsrc=aw.ds';

  /// Study abord function
  void _launchURL6() async {
    if (!await launch(_url6)) throw 'Could not launch $_url';
  }

  /// Join Armed forces  link
  static const String _url7 =
      'https://joinindianarmy.nic.in/Authentication.aspx';

  /// join armed forces link  function
  void _launchURL7() async {
    if (!await launch(_url7)) throw 'Could not launch $_url';
  }

  /// Invest in your fashion link
  static const String _url8 =
      'https://in.indeed.com/career-advice/finding-a-job/how-to-find-your-passion';

  ///Invest in your fashion  function
  void _launchURL8() async {
    if (!await launch(_url8)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset(
        'assets/school/school.png',
        height: 100,
        width: 150,
      ),
      SizedBox(
        height: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget: BuildFrontWidget(asset: 'assets/school/Bio.jpg'),
            innerWidget: InnerWidget(
              name: 'Btech Biotechnology',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFF4af2a1),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget: BuildFrontWidget(asset: 'assets/school/food.png'),
            innerWidget: InnerWidget(
              name: 'Btech Food Technology',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFF5cc9f5),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget:
                BuildFrontWidget(asset: 'assets/school/Mechanical.jpg'),
            innerWidget: InnerWidget(
              name: 'Btech Mechanical Engineering',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFffa26b),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget: BuildFrontWidget(asset: 'assets/school/civil.png'),
            innerWidget: InnerWidget(
              name: 'Btech Civil Engineering',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFfe6d72),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget: BuildFrontWidget(asset: 'assets/school/chemical.jpg'),
            innerWidget: InnerWidget(
              name: 'Btech Chemical Engineering',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFfe6d72),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget: BuildFrontWidget(asset: 'assets/school/Genetic.jpg'),
            innerWidget: InnerWidget(
              name: 'BTech Genetic Engineering',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFfe6d72),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget:
                BuildFrontWidget(asset: 'assets/school/Aeronatical.jpg'),
            innerWidget: InnerWidget(
              name: 'BTech Aeronautical Engineering',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFfe6d72),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget:
                BuildFrontWidget(asset: 'assets/school/Automobile.jpg'),
            innerWidget: InnerWidget(
              name: 'BTech Automobile Engineering',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFfe6d72),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget: BuildFrontWidget(asset: 'assets/school/IT.jpg'),
            innerWidget: InnerWidget(
              name: 'BTech Information Technology',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFfe6d72),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget:
                BuildFrontWidget(asset: 'assets/school/instrument.jpg'),
            innerWidget: InnerWidget(
              name: 'BTech Instrumentation',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFfe6d72),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
          FlipTile(
            key: GlobalKey<FlipTileState>(),
            frontWidget: BuildFrontWidget(asset: 'assets/school/mining .jpg'),
            innerWidget: InnerWidget(
              name: 'BTech Mining Engineering',
              tags: ['Top to know more '],
              backgroundColor: Color(0xFFfe6d72),
            ),
            tileSize: Size(width! / 2, width! / 2),
            animationDuration: Duration(milliseconds: 0),
            stackController: controller,
            unfoldDirection: SwipeDirection.right,
            parentKey: key,
          ),
        ],
      ),
    ]);
  }
}
