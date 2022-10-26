import 'dart:async';

import 'package:flutter/material.dart';
import 'package:letsconnectnewui/screens/onboarding/onborading1.dart';

class NormalSplash extends StatefulWidget {
  const NormalSplash({Key? key}) : super(key: key);

  @override
  State<NormalSplash> createState() => _NormalSplashState();
}

class _NormalSplashState extends State<NormalSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 2300),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OnBoardone())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(70),
        child: Image(
          image: AssetImage(
            "assets/logo.png",
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
