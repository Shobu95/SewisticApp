import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sewistic_app/screens/intro/intro_slider/fadeInFromBottom.dart';
import 'package:sewistic_app/screens/intro/intro_slider/intro_slider.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {

  AnimationController rippleController;
  AnimationController scaleController;

  Animation<double> rippleAnimation;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    rippleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              scaleController.reverse();
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: IntroSlider()));
            }
          });
    rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(rippleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController.forward();
            }
          });
    scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(scaleController);

    rippleController.forward();
  }

  @override
  void dispose() {
    rippleController.dispose();
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    showIntroSlider(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Center(
            child: FadeInFromBottom(
              key: UniqueKey(),
              child: AssetImage('assets/images/sewistic-logo-web.png'),
              index: 0,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedBuilder(
              animation: rippleAnimation,
              builder: (context, child) => Container(
                width: rippleAnimation.value,
                height: rippleAnimation.value,
                child: AnimatedBuilder(
                    animation: scaleAnimation,
                    builder: (context, child) => Transform.scale(
                          scale: scaleAnimation.value,
                          child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: scaleAnimation.value > 1 ? Colors.white : Theme.of(context).primaryColor)),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
  void showIntroSlider(BuildContext context) {
    Timer(Duration(milliseconds: 1700), () {
      scaleController.forward();
    });
  }
}
