import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sewistic_app/screens/intro/intro_slider/intro_slider.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    showIntroSlider(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Shimmer.fromColors(
              period: Duration(milliseconds: 2500),
              baseColor: Colors.black,
              highlightColor: Colors.white.withOpacity(0.7),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  height: 110,
                  child: Image.asset('assets/images/sewistic-logo-web.png',
                  fit: BoxFit.fill,)
                ),
              ),
            ),
//                Text(
//                  "LINK",
//                  style: TextStyle(
//                      letterSpacing: 3,
//                      fontSize: 50.0,
//                      fontWeight: FontWeight.bold,
//                  ),
//                ),
          ],
        ),
      ),
    );
  }

  void showIntroSlider(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IntroSlider()));
    });
  }
}
