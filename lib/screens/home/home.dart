import 'package:flutter/material.dart';
import 'package:letsconnectnewui/screens/home/HomeScreenProfile.dart';
import 'package:letsconnectnewui/screens/home/chathome.dart';
import 'package:letsconnectnewui/screens/home/moods.dart';
import 'package:letsconnectnewui/screens/home/notifications.dart';
import 'package:letsconnectnewui/screens/home/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 3;

  final pages = [
    HomeScreenProfile(),
    Moods(),
    ChatHome(),
    Notifications(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.blue.shade500,
                          Colors.blue.shade400,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(
                          "assets/profile/home.png",
                        ),
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                : ImageIcon(
                    AssetImage(
                      "assets/profile/home.png",
                    ),
                    color: Colors.grey,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.blue.shade500,
                          Colors.blue.shade400,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(
                          "assets/profile/mood.png",
                        ),
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                : ImageIcon(
                    AssetImage(
                      "assets/profile/mood.png",
                    ),
                    color: Colors.grey,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.blue.shade500,
                          Colors.blue.shade400,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(
                          "assets/profile/chats.png",
                        ),
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                : Container(
                    height: 20,
                    width: 20,
                    child: ImageIcon(
                      AssetImage(
                        "assets/profile/chats.png",
                      ),
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.blue.shade500,
                          Colors.blue.shade400,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(
                          "assets/profile/notification.png",
                        ),
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                : ImageIcon(
                    AssetImage(
                      "assets/profile/notification.png",
                    ),
                    color: Colors.grey,
                    size: 20,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 4;
              });
            },
            icon: pageIndex == 4
                ? Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.blue.shade500,
                          Colors.blue.shade400,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(
                          "assets/profile/profile.png",
                        ),
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                : ImageIcon(
                    AssetImage(
                      "assets/profile/profile.png",
                    ),
                    color: Colors.grey,
                    size: 20,
                  ),
          ),
        ],
      ),
    );
  }
}
