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
          children: [
            Shimmer.fromColors(
              period: Duration(milliseconds: 2500),
              baseColor: Colors.black,
              highlightColor: Colors.white.withOpacity(0.7),
              child: Container(
                height: 110,
                child: Image.asset('assets/images/sewistic-logo-web.png', fit: BoxFit.fill,),
              ),

            )
          ],
        )
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
