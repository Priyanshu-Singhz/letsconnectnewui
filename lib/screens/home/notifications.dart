import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int limit = 10;
    int number = 0;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text("Notifications", style: MyTextStyle.headerTheme),
            SizedBox(width: 124),
            Text("Clear All", style: MyTextStyle.mediumTheme)
          ],
        ),
      ),
      body: Unreadnotification(imag: "assets/home/notifications/pic1.png"),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications_outlined),
            label: 'Camera',
          ),
        ],
      ),
    );
  }
}

class Unreadnotification extends StatelessWidget {
  final String imag;

  const Unreadnotification({
    Key? key,
    required this.imag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        tileColor: Color(0xffEFF3F6),
        title: Text(
          "Here goes content for a notification that is not read yet.",
          style: MyTextStyle.mediumTheme,
        ),
        leading: Container(
          height: 48,
          width: 48,
          child: Image(image: AssetImage("$imag")),
        ),
      );
    });
  }
}

class readnotification extends StatelessWidget {
  final String imag;

  const readnotification({
    Key? key,
    required this.imag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        tileColor: Colors.white,
        title: Text(
          "Here goes content for notification that has been read already.",
          style: MyTextStyle.mediumTheme,
        ),
        leading: Container(
          height: 48,
          width: 48,
          child: Image(image: AssetImage("$imag")),
        ),
      );
    });
  }
}

class IconNotification extends StatelessWidget {
  final String icon;
  final String message;
  const IconNotification({Key? key, required this.icon, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Text("$message"),
        leading: Container(
          height: 48,
          width: 48,
          child: Icon(Icons.abc_outlined),
        ),
      );
    });
  }
}
