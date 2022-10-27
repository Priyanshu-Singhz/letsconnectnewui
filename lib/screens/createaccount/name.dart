import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/createaccount/age.dart';
import 'package:letsconnectnewui/screens/loginscreen/verifyotp.dart';
import 'package:sizer/sizer.dart';

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

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
                Column(
                  children: [
                    Container(
                      width: 100.w,
                      height: 60.h,
                      decoration: BoxDecoration(color: Colors.lightBlue),
                      child: Image(
                        image: AssetImage("assets/doodlee.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: ContainerCard(),
                ),
                CustomBack(
                  $onTap: () {
                    Get.to(VefifyOtp());
                  },
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
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w),
      width: MediaQuery.of(context).size.width,
      // height: 62.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Container(
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
                  child: Text(
                    "Welcome !",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 43, 76),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
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
                Text(
                  "What should we call you ?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 43, 76),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  "Full Name",
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // SizedBox(height: 8),
            TextField(
              maxLength: 50,
              decoration: InputDecoration(
                hintText: 'Ex : Priyanshu Singh',
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Text(
                  "*Please use your real name",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            CustomButton1(
              $height: 7.5.h,
              label: "Next",
              onTap: () {
                Get.to(Age());
              },
            ),
          ],
        ),
      ),
    );
  }
}
