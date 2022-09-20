import 'package:flutter/material.dart';
import 'package:letsconnectnewui/models/onboarding_model.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) {
            return OnBoardingCard(
              model: onBoardingList[index],
            );
          }),
    );
  }
}

class OnBoardingCard extends StatelessWidget {
  final OnBoardingModel model;
  const OnBoardingCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(model.imgUrl),
        Positioned(
          left: 0,
          top: MediaQuery.of(context).size.height - 274,
          child: Image.asset("assets/onboarding/lines.png"),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 274,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18))),
          ),
        ),
      ],
    );
  }
}
