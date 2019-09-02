import 'package:flutter/material.dart';
import 'package:flutter_youtube/constant/Constant.dart';
import 'package:flutter_youtube/screens/home_screen.dart';
import 'package:flutter_youtube/screens/player_screen.dart';
import 'package:flutter_youtube/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'YouTube',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        accentColor: Colors.black,
        primaryColor: Color(0xFFffffff),
        primaryColorDark: Color(0xffffff)),
    home: HomeScreen(),
//    routes: <String, WidgetBuilder>{
//      HOME_SCREEN: (BuildContext context) => HomeScreen(),
//      SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
////      PLAYER_SCREEN: (BuildContext context) => Player(),
//    },
  ));
}
