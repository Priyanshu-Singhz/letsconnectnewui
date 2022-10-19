import 'dart:async';

import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/colors.dart';
import 'package:letsconnectnewui/screens/onboarding/onboarding.dart';
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
        Duration(milliseconds: 2500),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
      ),
      child: Padding(
        padding: const EdgeInsets.all(70),
        child:
            Lottie.asset('assets/profile/lets-connect-splash-animation.json'),
        // child: Image(
        //   image: AssetImage(
        //     "assets/logo.png",
        //   ),
        //   color: Colors.blue,
        // ),
      ),
    );
  }
}
