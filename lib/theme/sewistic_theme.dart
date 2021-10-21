import 'package:flutter/material.dart';

ThemeData sewisticTheme() {
  return ThemeData(
    primaryColor: Colors.pink[500],
    iconTheme: const IconThemeData(color: Colors.black),
    textTheme: textTheme(),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.pink[500]),
  );
}

TextTheme textTheme() {
  return TextTheme(
      headline1: headlineBlack(),
      headline2: headlinePink(),
      headline3: normalLineBlack(),
      headline4: normalLinePink());
}

TextStyle headlineBlack() {
  return const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}

TextStyle headlinePink() {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.pink[500],
  );
}

TextStyle normalLineBlack() {
  return const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}

TextStyle normalLinePink() {
  return TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.pink[500],
  );
}
