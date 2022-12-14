import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/theme.dart';
import 'package:letsconnectnewui/screens/onboarding/lottiesplashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, lPook at the dimensions of the device screen and fill it in,unit in dp)

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Method',
      // You can use the library anywhere in the app even in theme
      theme: appTheme,
      home: Splashscreen(),
    );
  }
}
