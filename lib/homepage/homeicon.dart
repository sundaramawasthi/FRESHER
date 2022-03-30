import 'package:flutter/material.dart';

class CatigoryW extends StatelessWidget {
  String image;
  String text;
  Color color;

  CatigoryW({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color(0x9F3D416E),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 120,
            height: 120,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
