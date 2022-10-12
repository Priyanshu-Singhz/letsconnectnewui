import 'package:flutter/material.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        Row(
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
                            AssetImage("assets/home/notifications/pic1.png"),
                      ),
                      progressColor: Colors.lightBlue,
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 40,
                    child: Container(
                        height: 24,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        )),
                  )
                ],
              ),
            ),
            Spacer(),
          ],
        )
      ],
    );
  }
}
