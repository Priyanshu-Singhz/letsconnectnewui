import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/screens/createaccount/interest_view.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  Row(
                    children: [
                      Text("Invitations", style: MyTextStyle.headerTheme),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                  SizedBox(height: 16),
                  Scrol(),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Container(
              height: 1,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 24),
                    Text("Chats", style: MyTextStyle.headerTheme),
                  ],
                ),
                SizedBox(height: 16),
                Container(height: 40, width: 312, child: SearchBar()),
                Container(
                  height: 432,
                  width: 336,
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
                                          width: 105,
                                        ),
                                        Container(
                                            height: 16,
                                            width: 16,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Center(
                                                child: Text("4",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10))))
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 18),
                                        Icon(
                                          Icons.done_all,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                            "Lorem ipsum amet, con...            ",
                                            style:
                                                MyTextStyle.extraregularTheme),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text("11:21 PM",
                                            style:
                                                MyTextStyle.extraregularTheme),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
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
                                      height: 24,
                                      width: 237,
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
                                        SizedBox(width: 18),
                                        Icon(
                                          Icons.done_all,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                            "Lorem ipsum amet, con...            ",
                                            style:
                                                MyTextStyle.extraregularTheme),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text("11:21 PM",
                                            style:
                                                MyTextStyle.extraregularTheme),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
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
    );
  }
}

class Scrol extends StatelessWidget {
  const Scrol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: 348,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic1.png"),
                ),
              ),
              Positioned(
                top: 45,
                child: Center(
                    child: Text("Soham", style: MyTextStyle.regularTheme)),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic2.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Mitchell", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic3.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Rom", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic4.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Arthur", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic1.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Silly", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic1.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Soham", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic2.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Mitchell", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic3.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Rom", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic4.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Arthur", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Stack(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 24, // Image radius

                  backgroundImage: AssetImage("assets/notifications/pic1.png"),
                ),
              ),
              Positioned(
                top: 45,
                left: 5,
                child: Text("Silly", style: MyTextStyle.regularTheme),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
