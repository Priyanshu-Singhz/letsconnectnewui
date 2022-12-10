import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/loginscreen/verifyotp.dart';
import 'package:sizer/sizer.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          bottomSheet: Container(
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                      height: 55.h,
                      width: 100.w,
                      decoration: BoxDecoration(color: Colors.lightBlue),
                      child: Image(
                        image: AssetImage("assets/doodlee.png"),
                        fit: BoxFit.fill,
                      )),
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

class ContainerCard extends StatefulWidget {
  const ContainerCard({
    Key? key,
  }) : super(key: key);

  @override
  State<ContainerCard> createState() => _ContainerCardState();
}

class _ContainerCardState extends State<ContainerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 7.w),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/onboarding/line.png",
                      ),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  child: AutoSizeText(
                    maxLines: 1,
                    "Get Started",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 43, 76),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                AutoSizeText(
                  "We'll send you a six digit one time verification ",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                AutoSizeText(
                  "code",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                AutoSizeText(
                  "Phone Number",
                  style: TextStyle(
                      color: Color(0xff2D4379),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextField(
                maxLength: 10,
                decoration: InputDecoration(
                  prefixIcon: Container(
                    height: 2.5.h,
                    width: 20.w,
                    child: Row(
                      children: [
                        Container(
                          height: 2.5.h,
                          width: 10.w,
                          child: Image(
                            image: AssetImage(
                              "assets/loginpage/flag.png",
                            ),
                          ),
                        ),
                        Text("+91")
                      ],
                    ),
                  ),
                  hintText: 'Ex: 12345 67890',
                ),
                keyboardType: TextInputType.number),
            SizedBox(
              height: 1.5.h,
            ),
            CustomButton1(
                $height: 7.5.h,
                label: "Send OTP",
                onTap: () {
                  Get.to(VefifyOtp());
                }),
            SizedBox(
              height: 1.5.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    "OR SIGN IN WITH",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 43, 76),
                      letterSpacing: 2,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 4.h,
                    width: 50.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/loginpage/google.png"),
                        Spacer(),
                        Image.asset("assets/loginpage/facebook.png"),
                        Spacer(),
                        Image.asset("assets/loginpage/apple.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
