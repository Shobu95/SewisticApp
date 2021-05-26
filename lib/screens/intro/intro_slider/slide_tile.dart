import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(
              height: 40,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  static List<SlideTile> createSlides() {
    List<SlideTile> slideTiles = new List<SlideTile>();

    slideTiles.add(SlideTile(
      imagePath: "assets/images/delivery.png",
      title: "We Pick",
      desc:
          "Once you place your order, our representative will call you and a time will be scheduled for the pickup.",
    ));

    slideTiles.add(SlideTile(
      imagePath: "assets/images/tailor.png",
      title: "We Stitch",
      desc:
          "We have skilled and highly professional stitching team, providing you a way to incorporate your individuality to your garments.",
    ));

    slideTiles.add(SlideTile(
      imagePath: "assets/images/dress.png",
      title: "We Deliver",
      desc:
          "After stitching the outfit will be delivered at your place, in next 5 working days.",
    ));

    return slideTiles;
  }
}
