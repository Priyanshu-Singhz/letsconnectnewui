import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/screens/home/persondetails.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class MoodList extends StatefulWidget {
  const MoodList({Key? key}) : super(key: key);
  @override
  State<MoodList> createState() => _MoodListState();
}

class _MoodListState extends State<MoodList> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = [
      CustomCard(name: "Person A"),
      CustomCard(name: "Person B"),
      CustomCard(name: "Person C"),
      CustomCard(name: "Person D"),
      CustomCard(name: "Person E")
    ];

    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          body: Stack(
            children: [
              GradientTop(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Container(
                      height: 96.h,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          scrollDirection: Axis.vertical,
                          enlargeCenterPage: true,
                        ),
                        items: imageSliders,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomCard extends StatelessWidget {
  final String name;

  const CustomCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            height: 76.h,
            width: 85.w,
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(PersonDetail());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    height: 50.h,
                    width: 100.w,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.grey,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage("assets/profile/hars.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40.h,
                  child: Container(
                    width: 85.w,
                    height: 38.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), //color of shadow
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 1)),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 22),
                      child: Column(
                        children: [
                          Spacer(),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "$name",
                                      style: MyTextStyle.headerTheme,
                                    ),
                                    Spacer(),
                                    Icon(Icons.location_on),
                                    Text("5 km",
                                        style: MyTextStyle.littlesmaller),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.yellow[600],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.h, 1.w, 1.h, 1.w),
                                        child: Center(
                                          child: Text("Blogging",
                                              style: MyTextStyle.cardTheme),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 2.w),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.yellow[600],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.h, 1.w, 1.h, 1.w),
                                        child: Center(
                                          child: Text("Photography",
                                              style: MyTextStyle.cardTheme),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 2.w),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.yellow[600],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.h, 1.w, 1.h, 1.w),
                                        child: Center(
                                          child: Text("Vlogging",
                                              style: MyTextStyle.cardTheme),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Container(
                                  height: 9.h,
                                  child: Flexible(
                                    child: Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standa...",
                                        style: MyTextStyle.littlesmaller),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Looking for",
                                                style: MyTextStyle.cardTheme),
                                          ],
                                        ),
                                        SizedBox(height: 1.h),
                                        Row(
                                          children: [
                                            Container(
                                              height: 3.2.h,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        12, 4, 12, 4),
                                                child: Center(
                                                  child: Text("Team",
                                                      style: MyTextStyle
                                                          .extraregularTheme),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 1.w),
                                            Container(
                                              height: 3.2.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                    color: Colors.grey),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        12, 4, 12, 4),
                                                child: Center(
                                                  child: Text("Frieds",
                                                      style: MyTextStyle
                                                          .extraregularTheme),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 1.w),
                                            Container(
                                              height: 3.2.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                    color: Colors.grey),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    1.h, 1.w, 1.h, 1.w),
                                                child: Center(
                                                  child: Text("Coffee",
                                                      style: MyTextStyle
                                                          .extraregularTheme),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) =>
                                                CustomPopup());
                                      },
                                      child: Container(
                                        height: 7.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.1, 1.3],
                                            colors: [
                                              Color(0xff53C9F6),
                                              Colors.blue,
                                            ],
                                          ),
                                        ),
                                        child: Icon(Icons.person_add_alt_1,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GradientTop extends StatelessWidget {
  const GradientTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 1.3],
          colors: [
            Color(0xff53C9F6),
            Colors.blue,
          ],
        ),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 64, 16, 64),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.chevron_left_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 38,
                    width: 143,
                    child: Text(
                      Get.arguments,
                      style: MyTextStyle.smallheaderThemewhite,
                    )),
                Spacer(),
                Transform.rotate(
                    angle: 89.5,
                    child:
                        Icon(Icons.u_turn_left_rounded, color: Colors.white)),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/profile/morevert.png"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
