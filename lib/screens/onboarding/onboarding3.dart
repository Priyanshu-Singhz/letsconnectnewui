import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/screens/loginscreen/loginscreen.dart';
import 'package:letsconnectnewui/screens/onboarding/onboarding2.dart';

class OnBoardThree extends StatelessWidget {
  const OnBoardThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/onboarding/onboard3.png",
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
              child: ContainerCard(),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    Key? key,
  }) : super(key: key);

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
              text: "Participate in Events and get ",
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
                            image: AssetImage(
                              "assets/onboarding/line.png",
                            ),
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        child: Text(
                          "recommendation",
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
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Row(
                children: List.generate(3, (index) {
                  var currentIndex = 2;
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
                  Get.to(Loginscreen());
                },
                child: Row(
                  children: [
                    Text(
                      'Next',
                      style: MyTextStyle.mediumTheme,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 17,
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
