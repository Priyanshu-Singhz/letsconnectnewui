import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/colors.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'dart:math' as math;

class PersonDetail extends StatelessWidget {
  const PersonDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //i like transaparent :-)
        systemNavigationBarColor: Colors.white, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        // backgroundColor: Colors.blue,
        bottomSheet: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Positioned(
                  child: TopView(),
                ),
                Positioned(child: ContainerCard()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Cody Fisher, 21",
                    style: MyTextStyle.headerTheme,
                  ),
                  Spacer(),
                  Icon(Icons.location_on),
                  Text("5 km", style: MyTextStyle.littlesmaller),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 12),
                  Text("Male", style: MyTextStyle.littlesmaller)
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.work_outlined),
                  SizedBox(width: 12),
                  Text("Senior Director, Microsoft",
                      style: MyTextStyle.littlesmaller)
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.school_sharp),
                  SizedBox(width: 12),
                  Text("MBA, Wharton Business School",
                      style: MyTextStyle.littlesmaller),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 1,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Interests", style: MyTextStyle.xheaderTheme),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[600],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child: Text("Blogging", style: MyTextStyle.cardTheme),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[600],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child:
                            Text("Photography", style: MyTextStyle.cardTheme),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[600],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child: Text("Vlogging", style: MyTextStyle.cardTheme),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[600],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child: Text("Cooking", style: MyTextStyle.cardTheme),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[600],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child: Text("Yoga", style: MyTextStyle.cardTheme),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[600],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child:
                            Text("Mindfulness", style: MyTextStyle.cardTheme),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 1,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Bio", style: MyTextStyle.xheaderTheme),
                ],
              ),
              SizedBox(height: 12),
              Container(
                height: 216,
                child: Flexible(
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      style: MyTextStyle.littlesmaller),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 1,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Looking for", style: MyTextStyle.xheaderTheme),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child: Text("Team", style: MyTextStyle.cardTheme),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child: Text("Frieds", style: MyTextStyle.cardTheme),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Center(
                        child: Text("Coffee"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TopView extends StatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 360,
          width: 360,
          child: Image(
            image: AssetImage("assets/profile/harsh.png"),
          ),
        ),
        CustomslightupBack(),
        CustomMore(),
        Positioned(
          top: 266,
          left: 288,
          child: InkWell(
            onTap: () {
              showDialog(context: context, builder: (context) => CustomPopup());
            },
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 273,
          left: 248,
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Colors.red[600],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomPopup extends StatelessWidget {
  const CustomPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Container(
        alignment: Alignment.topCenter,
        width: 312,
        height: 320,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 55,
                ),
                Flexible(
                    child: Text("Connected Successfully!",
                        style: MyTextStyle.headerTheme)),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.close)),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 128,
              width: 240,
              child: Stack(children: [
                Positioned(
                  right: 2.5,
                  child: Container(
                    height: 128,
                    width: 128,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/notifications/pic2.png")),
                    ),
                  ),
                ),
                Positioned(
                  left: 2.5,
                  child: Container(
                    height: 128,
                    width: 128,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/notifications/pic1.png")),
                    ),
                  ),
                ),
                Positioned(
                  top: 48,
                  left: 105,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffFACC15),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: Image(
                            image: AssetImage("assets/profile/link.png"),
                          )),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 32),
            CustomButton(label: "Send the first message")
          ],
        ),
      ),
    );
  }
}
