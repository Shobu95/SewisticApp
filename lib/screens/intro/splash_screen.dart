import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:sewistic_app/screens/intro/intro_slider/fadeInFromBottom.dart';
import 'package:sewistic_app/screens/intro/intro_slider/intro_slider.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Duration animationDuration = Duration(milliseconds: 400);
  final Duration delay = Duration(milliseconds: 400);
  GlobalKey rectGetterKey = RectGetter.createGlobalKey();
  Rect rect;

  void _onTap() async {
    setState(() => rect = RectGetter.getRectFromKey(rectGetterKey));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() =>
          rect = rect.inflate(1.0 * MediaQuery.of(context).size.longestSide));
      Future.delayed(animationDuration, _goToNextPage);
    });
  }

  void _goToNextPage() {
    Navigator.of(context)
        .push(FadeRouteBuilder(page: IntroSlider()))
        .then((_) => setState(() => rect = null));
  }

  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: RectGetter(
        key: rectGetterKey,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).primaryColor,
          onPressed: _onTap,
          child: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: FadeInFromBottom(
              key: UniqueKey(),
              child: AssetImage('assets/images/sewistic-logo-web.png'),
              index: 0,
            ),
          ),
          _ripple(),
        ],
      ),
    );
  }

  Widget _ripple() {
    if (rect == null) {
      return Container();
    }
    return AnimatedPositioned(
      duration: animationDuration,
      left: rect.left,
      right: MediaQuery.of(context).size.width - rect.right,
      top: rect.top,
      bottom: MediaQuery.of(context).size.height - rect.bottom,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }

  void showIntroSlider(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      _onTap();
      setState(() {
        isFirst = false;
      });
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => IntroSlider()));
    });
  }
}

class FadeRouteBuilder<T> extends PageRouteBuilder<T> {
  final Widget page;

  FadeRouteBuilder({@required this.page})
      : super(
          pageBuilder: (context, animation1, animation2) => page,
          transitionsBuilder: (context, animation1, animation2, child) {
            return FadeTransition(opacity: animation1, child: child);
          },
        );
}
