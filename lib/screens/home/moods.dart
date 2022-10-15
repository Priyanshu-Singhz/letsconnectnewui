import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';

class Moods extends StatelessWidget {
  const Moods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Spacer(),
            Text.rich(
              TextSpan(
                text: "whats your ",
                style: MyTextStyle.headerTheme,
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
                            "mood",
                            style: MyTextStyle.headerTheme,
                          ),
                        ),
                      )
                    ],
                  ),
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Text(
                          " today?",
                          style: MyTextStyle.headerTheme,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 168,
                      width: 144,
                      child: Image(
                        image: AssetImage("assets/homepage/foodbuddy.png"),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 168,
                      width: 144,
                      child: Image(
                        image: AssetImage("assets/homepage/cofeemeet.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 168,
                      width: 144,
                      child: Image(
                        image: AssetImage("assets/homepage/reading.png"),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 168,
                      width: 144,
                      child: Image(
                        image: AssetImage("assets/homepage/travel.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 168,
                      width: 144,
                      child: Image(
                        image: AssetImage("assets/homepage/business.png"),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 168,
                      width: 144,
                      child: Image(
                        image: AssetImage("assets/homepage/partner.png"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
