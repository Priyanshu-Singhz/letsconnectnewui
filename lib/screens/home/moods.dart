import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/screens/home/moodslist.dart';
import 'package:sizer/sizer.dart';

class Moods extends StatelessWidget {
  const Moods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(3.5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text.rich(
                  TextSpan(
                    text: "Whats your ",
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
                  height: 3.5.h,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 27.h,
                          width: 44.w,
                          child: InkWell(
                            onTap: () {
                              Get.to(MoodList(), arguments: "Food Buddy");
                            },
                            child: Image(
                              image:
                                  AssetImage("assets/homepage/foodbuddy.png"),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 27.h,
                          width: 44.w,
                          child: InkWell(
                            onTap: () {
                              Get.to(MoodList(), arguments: "Coffee Meet");
                            },
                            child: Image(
                              image:
                                  AssetImage("assets/homepage/cofeemeet.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 27.h,
                          width: 44.w,
                          child: InkWell(
                            onTap: () {
                              Get.to(MoodList(), arguments: "Reading Buddy");
                            },
                            child: Image(
                              image: AssetImage("assets/homepage/reading.png"),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 27.h,
                          width: 44.w,
                          child: Image(
                            image: AssetImage("assets/homepage/travel.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 27.h,
                          width: 44.w,
                          child: InkWell(
                            onTap: () {
                              Get.to(MoodList(), arguments: "Travel Partner");
                            },
                            child: InkWell(
                              onTap: () {
                                Get.to(MoodList(),
                                    arguments: "Business Partner");
                              },
                              child: Image(
                                image:
                                    AssetImage("assets/homepage/business.png"),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 27.h,
                          width: 44.w,
                          child: InkWell(
                            onTap: () {
                              Get.to(MoodList(), arguments: "Find My Partner");
                            },
                            child: Image(
                              image: AssetImage("assets/homepage/partner.png"),
                            ),
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
      },
    );
  }
}
