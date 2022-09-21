// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:letsconnectnewui/models/onboarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        physics: NeverScrollableScrollPhysics(),
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) {
          return OnBoardingCard(
            model: onBoardingList[index],
            currentIndex: currentIndex,
            pageController: pageController,
          );
        },
      ),
    );
  }
}

class OnBoardingCard extends StatelessWidget {
  final int currentIndex;
  final OnBoardingModel model;
  final PageController pageController;
  const OnBoardingCard({
    Key? key,
    required this.model,
    required this.currentIndex,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            model.imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 250,
          child: Image.asset(
            "assets/onboarding/lines.png",
            scale: 4.8,
          ),
        ),
        Positioned(
          bottom: 0,
          child: ContainerCard(
            model: model,
            currentIndex: currentIndex,
            pageController: pageController,
          ),
        ),
      ],
    );
  }
}

class ContainerCard extends StatelessWidget {
  final PageController pageController;
  const ContainerCard({
    Key? key,
    required this.pageController,
    required this.model,
    required this.currentIndex,
  }) : super(key: key);

  final OnBoardingModel model;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      width: MediaQuery.of(context).size.width,
      height: 274,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              text: model.labels[0],
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/onboarding/line.png"),
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        child: Text(
                          model.labels[1],
                          style: TextStyle(
                            color: Color.fromARGB(255, 3, 43, 76),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                TextSpan(
                  text: model.labels[2],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Row(
                children: List.generate(onBoardingList.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 6,
                    width: currentIndex == index ? 24 : 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: currentIndex == index
                          ? Color(0xffFACC15)
                          : Colors.white,
                    ),
                  );
                }),
              ),
              Spacer(),
              ElevatedButton(
                style: TextButton.styleFrom(
                    // foregroundColor: Colors.black,
                    backgroundColor: Color(0xffFACC15),
                    minimumSize: Size(148, 48)),
                onPressed: () {
                  if (currentIndex == 2) {
                    return;
                  }
                  pageController.animateToPage(currentIndex + 1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut);
                },
                child: Row(
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
