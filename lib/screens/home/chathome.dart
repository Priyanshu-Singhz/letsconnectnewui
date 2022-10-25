import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/screens/createaccount/interest_view.dart';
import 'package:letsconnectnewui/screens/home/invitations.dart';
import 'package:sizer/sizer.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({Key? key}) : super(key: key);

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  final List<String> names = [
    "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey",
    "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey",
    "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey",
    "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey",
  ];

  List imgList = [
    AssetImage('assets/notifications/pic1.png'),
    AssetImage('assets/notifications/pic2.png'),
    AssetImage('assets/notifications/pic3.png'),
    AssetImage('assets/notifications/pic4.png'),
    AssetImage('assets/notifications/pic1.png'),
    AssetImage('assets/notifications/pic2.png'),
    AssetImage('assets/notifications/pic3.png'),
    AssetImage('assets/notifications/pic4.png'),
    AssetImage('assets/notifications/pic1.png'),
    AssetImage('assets/notifications/pic2.png'),
    AssetImage('assets/notifications/pic3.png'),
    AssetImage('assets/notifications/pic4.png'),
    AssetImage('assets/notifications/pic1.png'),
    AssetImage('assets/notifications/pic2.png'),
    AssetImage('assets/notifications/pic3.png'),
    AssetImage('assets/notifications/pic4.png'),
    AssetImage('assets/notifications/pic1.png'),
    AssetImage('assets/notifications/pic2.png'),
    AssetImage('assets/notifications/pic3.png'),
    AssetImage('assets/notifications/pic4.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(Invitations());
                          },
                          child: Row(
                            children: [
                              Text("Invitations",
                                  style: MyTextStyle.headerTheme),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Scrol(),
                        SizedBox(height: 2.h),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.1.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 7.w),
                          Text("Chats", style: MyTextStyle.headerTheme),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Container(height: 7.h, width: 88.w, child: SearchBar()),
                      Container(
                        height: 80.h,
                        width: 93.w,
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              elevation: 0,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 24, // Image radius

                                        backgroundImage: imgList[index],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                names[index],
                                                style: MyTextStyle.mediumTheme,
                                              ),
                                              SizedBox(
                                                width: 35.w,
                                              ),
                                              Container(
                                                  height: 2.h,
                                                  width: 4.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                  child: Center(
                                                      child: Text("4",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 10))))
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(width: 4.8.w),
                                              Icon(
                                                Icons.done_all,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                  "Lorem ipsum amet, con...            ",
                                                  style: MyTextStyle
                                                      .extraregularTheme),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text("11:21 PM",
                                                  style: MyTextStyle
                                                      .extraregularTheme),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 24, // Image radius

                                        backgroundImage: imgList[index + 3],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 3.h,
                                            width: 65.w,
                                            child: Text(
                                              names[index + 3],
                                              style: MyTextStyle.mediumTheme,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(width: 4.5.w),
                                              Icon(
                                                Icons.done_all,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                  "Lorem ipsum amet, con...            ",
                                                  style: MyTextStyle
                                                      .extraregularTheme),
                                              SizedBox(
                                                width: 2.4.w,
                                              ),
                                              Text("11:21 PM",
                                                  style: MyTextStyle
                                                      .extraregularTheme),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Scrol extends StatelessWidget {
  const Scrol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.6.h,
      width: 95.h,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic1.png"),
                ),
              ),
              Center(child: Text("Soham", style: MyTextStyle.regularTheme)),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic2.png"),
                ),
              ),
              Text("Mitchell", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic3.png"),
                ),
              ),
              Text("Rom", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic4.png"),
                ),
              ),
              Text("Arthur", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic1.png"),
                ),
              ),
              Text("Silly", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic1.png"),
                ),
              ),
              Text("Soham", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic2.png"),
                ),
              ),
              Text("Mitchell", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic3.png"),
                ),
              ),
              Text("Rom", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic4.png"),
                ),
              ),
              Text("Arthur", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic1.png"),
                ),
              ),
              Text("Silly", style: MyTextStyle.regularTheme),
            ],
          ),
          SizedBox(
            width: 4.w,
          ),
        ],
      ),
    );
  }
}
