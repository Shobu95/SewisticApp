import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sewistic_app/screens/intro/intro_slider/intro_slider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    showIntroSlider(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image(
          image: AssetImage('assets/images/sewistic-logo-web.png'),
          color: Colors.white,
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
