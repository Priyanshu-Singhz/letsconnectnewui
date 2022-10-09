import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/home/notifications.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 64),
            Header(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to',
          style: MyTextStyle.headerTheme,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/onboarding/line.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            "Let's Connect",
            style: MyTextStyle.headerTheme,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'A few simple rules you should follow.',
          style: MyTextStyle.regularTheme,
        ),
        SizedBox(
          height: 52,
        ),
        RowData(text: "Respect others and treat them well."),
        SizedBox(height: 32),
        RowData(text: "Be the real you, everyone loves it."),
        SizedBox(height: 32),
        RowData(text: "Stay secure, don’t share personal information quickly."),
        SizedBox(height: 32),
        RowData(text: "Be kind and gentle."),
        SizedBox(height: 32),
        RowData(text: "Be Active."),
        SizedBox(height: 116),
        Text.rich(
          TextSpan(
            text: 'By continuing you agree to our',
            style: MyTextStyle.mediumTheme,
            children: [
              TextSpan(
                text: ' Terms of Service',
                style: MyTextStyle.mediumTheme.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: ' and',
                      style: MyTextStyle.mediumTheme,
                      children: [
                        TextSpan(
                          text: " Privacy Policy",
                          style: MyTextStyle.mediumTheme.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ])
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        CustomButton(
          label: "I Agree",
          onTap: () {
            Get.to(Notifications());
          },
        ),
      ],
    );
  }
}

class RowData extends StatelessWidget {
  final String text;
  const RowData({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_circle_outline,
          color: Colors.yellow,
          size: 30,
        ),
        SizedBox(width: 16),
        Flexible(child: Text(text, style: MyTextStyle.mediumTheme)),
      ],
    );
  }
}
