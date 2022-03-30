import 'package:flutter/material.dart';

import 'Physics.dart';

class BookCard2 extends StatelessWidget {
  final String title;
  final String subtitle;
  final int rating;
  final String imgUrl;
  const BookCard2({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Physics();
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: <Widget>[
                    for (int i = 0; i < rating; i++)
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 25.0,
                      ),
                  ],
                ),
              ],
            ),
            Image.asset(
              imgUrl,
              width: 160,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
