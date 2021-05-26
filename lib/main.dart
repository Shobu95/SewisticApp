import 'package:flutter/material.dart';
import 'package:sewistic_app/screens/intro/splash_screen.dart';
import 'package:sewistic_app/shared/constants.dart';

void main() => runApp(SewisticApp());

class SewisticApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.APP_NAME,
      theme: ThemeData(
        primaryColor: Colors.pink[500],
        accentColor: Colors.pink[500],
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: _textTheme(),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }

  TextTheme _textTheme() {
    return TextTheme(
      headline1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.pink[500],
      ),
      headline3: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.pink[500],
      ),
    );
  }
}
