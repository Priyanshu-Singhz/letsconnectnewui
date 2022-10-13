import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/screens/home/blokusers.dart';
import 'package:letsconnectnewui/screens/home/feedback.dart';
import 'package:letsconnectnewui/screens/home/update_phone.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 68,
            ),
            Profileimg(),
            // Text("Leslie Alaxender", style: MyTextStyle.headerTheme),
            Text("Priyanshu Singh", style: MyTextStyle.headerTheme),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Edit Profile",
                    style: TextStyle(color: Colors.blue, fontSize: 16)),
                Icon(
                  Icons.chevron_right,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            CustomContainer(text: "PREFERENCES"),
            SizedBox(
              height: 24,
            ),
            CustomTabs(
              text: "Update Phone Number",
              onTap: () {
                Get.to(UpdatePhone());
              },
            ),
            SizedBox(
              height: 24,
            ),
            CustomTabs(
                text: "Blocked Users",
                onTap: () {
                  Get.to(BlkUsers());
                }),
            SizedBox(
              height: 24,
            ),
            CustomContainer(text: "ABOUT US"),
            SizedBox(
              height: 24,
            ),
            CustomTabs(text: "Privacy Policy"),
            SizedBox(
              height: 24,
            ),
            CustomTabs(text: "Terms and Conditions"),
            SizedBox(
              height: 24,
            ),
            CustomTabs(
              text: "Share feedback",
              onTap: () {
                Get.to(FeedbackScreen());
              },
            ),
            SizedBox(
              height: 24,
            ),
            CustomContainer(text: "ACCOUNT"),
            SizedBox(
              height: 24,
            ),
            CustomTabs(text: "Log Out"),
            SizedBox(
              height: 24,
            ),
            CustomTabs(
              text: "Pause Acoount",
              onTap: () {
                showDialog(
                    context: context, builder: (context) => PauseAccount());
              },
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context, builder: (context) => CustomAlert());
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Text("Delete Acoount", style: MyTextStyle.mediumredTheme),
                  Spacer(),
                  Icon(
                    Icons.chevron_right,
                  ),
                  SizedBox(
                    width: 33,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 86,
              width: 64,
              child: Image(
                image: AssetImage("assets/logo.png"),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("Ver: 0.0.57 - Production - Android",
                style: MyTextStyle.regularTheme),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

class Profileimg extends StatelessWidget {
  const Profileimg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Container(
          height: 168,
          width: 128,
          child: Stack(
            children: [
              Container(
                child: CircularPercentIndicator(
                  radius: 68,
                  lineWidth: 5,
                  percent: 0.5,
                  center: const CircleAvatar(
                    radius: 70, // Image radius

                    backgroundImage:
                        AssetImage("assets/notifications/pic1.png"),
                  ),
                  progressColor: Colors.lightBlue,
                ),
              ),
              Positioned(
                top: 120,
                left: 40,
                child: Container(
                  child: Center(
                    child: Text("50%",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  ),
                  height: 24,
                  width: 48,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      stops: [0.0, 1.0],
                      colors: [
                        Colors.blue.shade500,
                        Colors.blue.shade400,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class CustomTabs extends StatelessWidget {
  final String text;

  final Function()? onTap;

  const CustomTabs({Key? key, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SizedBox(
            width: 24,
          ),
          Text("$text", style: MyTextStyle.mediumTheme),
          Spacer(),
          Icon(
            Icons.chevron_right,
          ),
          SizedBox(
            width: 33,
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String text;
  const CustomContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 24,
          ),
          Text("$text", style: MyTextStyle.regularTheme),
        ],
      ),
    );
  }
}

class CustomAlert extends StatelessWidget {
  const CustomAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Container(
        alignment: Alignment.topLeft,
        width: 312,
        height: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Delete Account?",
              style: MyTextStyle.mediumTheme,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Are you sure you really want to delete your account? This action cannot be reversed, account will be deleted permanently.",
              style: MyTextStyle.regularTheme,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    child: Text("Cancel", style: MyTextStyle.mediumblueTheme),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 157,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(13)),
                  child: Text(
                    "Delete Account",
                    style: MyTextStyle.mediumwhiteTheme,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PauseAccount extends StatelessWidget {
  const PauseAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Container(
        alignment: Alignment.topLeft,
        width: 312,
        height: 275,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Pause Account?",
              style: MyTextStyle.mediumTheme,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "By pausing your account, your profile will not be shown to other users and you will be logged out. You will retain your connections and chats. Your account and data will be resumed (i.e. your profile will be visible to other people) once you log in again.",
              style: MyTextStyle.regularTheme,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    child: Text("Cancel", style: MyTextStyle.mediumblueTheme),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 157,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(13)),
                  child: Text(
                    "Pause Account",
                    style: MyTextStyle.mediumwhiteTheme,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
