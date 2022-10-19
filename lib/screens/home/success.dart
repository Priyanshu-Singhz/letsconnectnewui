import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/home/profile.dart';
import 'package:lottie/lottie.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 250),
          Container(
            height: 200,
            width: 200,
            child:
                Lottie.asset('assets/profile/lets-connect-yellow-success.json'),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(
                width: 24,
              ),
              Text("Update Successful!", style: MyTextStyle.headerTheme),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: 24),
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
          SizedBox(height: 32),
          Container(
            height: 48,
            width: 312,
            child: CustomButton1(
              label: "Go Back To Profile",
              onTap: () {
                Get.to(ProfileScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
