import "package:flutter/material.dart";
import 'package:sewistic_app/screens/intro/splash_screen.dart';
import 'package:sewistic_app/shared/constants.dart';
import 'package:sewistic_app/theme/sewistic_theme.dart';

void main() => runApp(SewisticApp());

class SewisticApp extends StatelessWidget {
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
// import 'package:flutter/material.dart';
// import 'package:animated_splash/animated_splash.dart';
//
// void main() {
//   Function duringSplash = () {
//     print('Something background process');
//     int a = 123 + 23;
//     print(a);
//
//     if (a > 100)
//       return 1;
//     else
//       return 2;
//   };
//
//   Map<int, Widget> op = {1: Home(), 2: Home()};
//
//   runApp(MaterialApp(
//     home: AnimatedSplash(
//       imagePath: 'assets/images/sewistic-logo-web.png',
//       home: Home(),
//       customFunction: duringSplash,
//       duration: 3500,
//       type: AnimatedSplashType.BackgroundProcess,
//       outputAndHome: op,
//     ),
//   ));
// }
//
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('GeeksForGeeks'),
//           backgroundColor: Colors.green,
//         ),
//         body: Center(
//             child: Text('My Home Page',
//                 style: TextStyle(color: Colors.black,
//                     fontSize: 20.0))));
//   }
// }