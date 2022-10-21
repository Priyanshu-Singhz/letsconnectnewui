import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:letsconnectnewui/screens/onboarding/onboarding2.dart';
import 'package:letsconnectnewui/screens/onboarding/onboarding3.dart';
import 'package:letsconnectnewui/screens/onboarding/onborading1.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  final images = [OnBoardone(), OnBoardTwo(), OnBoardThree()];

  int numberOfPages = 3;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemCount: numberOfPages,
            itemBuilder: (BuildContext context, int index) {
              return images[currentPage];
            },
          ),
        ],
      ),
    );
  }
}
