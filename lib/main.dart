import "package:flutter/material.dart";
import 'package:sewistic_app/screens/intro/splash_screen.dart';
import 'package:sewistic_app/shared/constants.dart';
import 'package:sewistic_app/theme/sewistic_theme.dart';

void main() => runApp(const SewisticApp());

class SewisticApp extends StatelessWidget {
  const SewisticApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.APP_NAME,
      theme: sewisticTheme(),
      home: SplashScreen(),
    );
  }
}
