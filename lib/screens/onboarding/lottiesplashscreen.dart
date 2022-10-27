import 'dart:async';

import 'package:flutter/material.dart';
import 'package:letsconnectnewui/screens/onboarding/onboardings.dart';
import 'package:letsconnectnewui/screens/onboarding/onborading1.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 2300),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(70),
        child:
            Lottie.asset('assets/profile/lets-connect-splash-animation.json'),
      ),
    );
  }
}
