import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example5 = SplashScreenView(
      home: home(),
      duration: 4000,
      imageSize: 200,
      imageSrc: "Assets/images/ragamlogo.png",
      text: "RAGAM CAKES",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
          fontSize: 30.0,
          color: Color(0xFFff7b10),
          fontWeight: FontWeight.bold),
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      debugShowCheckedModeBanner: false,
      home: example5,
    );
  }
}
