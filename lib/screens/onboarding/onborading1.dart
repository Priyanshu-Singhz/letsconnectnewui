import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/screens/onboarding/onboarding2.dart';
import 'package:sizer/sizer.dart';

class OnBoardone extends StatelessWidget {
  const OnBoardone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          body: Container(
            height: 100.h,
            child: Stack(
              children: [
                SizedBox(
                  height: 70.h,
                  width: 100.w,
                  child: Image.asset(
                    "assets/onboarding/onboard1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 30.h,
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
      },
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
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.w),
      width: MediaQuery.of(context).size.width,
      height: 33.h,
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
              text: "Find People that ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
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
                              "assets/onboarding/linemedium.png",
                            ),
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        child: Text(
                          "get your",
                          style: TextStyle(
                            color: Color.fromARGB(255, 3, 43, 76),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/onboarding/linesmall.png"),
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        child: Text(
                          "vibe",
                          style: TextStyle(
                            color: Color.fromARGB(255, 3, 43, 76),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                TextSpan(
                  text: " and don't judge",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Row(
                children: List.generate(3, (index) {
                  var currentIndex = 0;
                  return Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 0.7.h,
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
                  Get.to(OnBoardTwo());
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
            height: 4.h,
          ),
        ],
      ),
    );
  }
}
