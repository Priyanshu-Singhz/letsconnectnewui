import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';

class HomeScreenProfile extends StatelessWidget {
  const HomeScreenProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
          ),
          Container()
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 548,
              width: 312,
              child: Stack(
                children: [
                  Container(
                    height: 360,
                    width: 360,
                    child: Image(
                      image: AssetImage("assets/profile/harsh.png"),
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 303,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      height: 268,
                      width: 312,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 24, 16, 22),
                        child: Column(
                          children: [
                            Container(
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
                                      Text("5 km",
                                          style: MyTextStyle.littlesmaller),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.yellow[600],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 6, 12, 6),
                                          child: Center(
                                            child: Text("Blogging",
                                                style: MyTextStyle.cardTheme),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.yellow[600],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 6, 12, 6),
                                          child: Center(
                                            child: Text("Photography",
                                                style: MyTextStyle.cardTheme),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.yellow[600],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 6, 12, 6),
                                          child: Center(
                                            child: Text("Vlogging",
                                                style: MyTextStyle.cardTheme),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    height: 62,
                                    child: Flexible(
                                      child: Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standa...",
                                          style: MyTextStyle.littlesmaller),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Row(
                                    children: [
                                      Text("Looking for",
                                          style: MyTextStyle.cardTheme),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Container(
                                        height: 26,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 4, 12, 4),
                                          child: Center(
                                            child: Text("Team",
                                                style: MyTextStyle
                                                    .extraregularTheme),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Container(
                                        height: 26,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border:
                                              Border.all(color: Colors.grey),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 4, 12, 4),
                                          child: Center(
                                            child: Text("Frieds",
                                                style: MyTextStyle
                                                    .extraregularTheme),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Container(
                                        height: 26,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border:
                                              Border.all(color: Colors.grey),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 4, 12, 4),
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
      ),
    );
  }
}
