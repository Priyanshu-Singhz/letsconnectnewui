import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/home/profile.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                Container(
                  height: 200,
                  width: 200,
                  child: Lottie.asset(
                      'assets/profile/lets-connect-yellow-success.json'),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(
                      width: 3.5.h,
                    ),
                    Text("Update Successful!", style: MyTextStyle.headerTheme),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    SizedBox(width: 3.5.h),
                    Row(
                      children: [
                        Text("Your new number is "),
                        Text(
                          "+91 12345 67890",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 4.h),
                CustomButton1(
                  $height: 7.h,
                  label: "Go Back To Profile",
                  onTap: () {
                    Get.to(ProfileScreen());
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
