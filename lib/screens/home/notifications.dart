import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            UnreadNotification(imag: "assets/home/notifications/pic1.png"),
            UnreadNotification(imag: "assets/home/notifications/pic2.png"),
            ReadNotification(imag: "assets/home/notifications/pic3.png"),
            ReadNotification(imag: "assets/home/notifications/pic4.png"),
            ReadNotification(imag: "assets/home/notifications/pic5.png"),
            ReadNotification(imag: "assets/home/notifications/pic6.png"),
            UnreadNotification(imag: "assets/home/notifications/pic1.png"),
            UnreadNotification(imag: "assets/home/notifications/pic2.png"),
            ReadNotification(imag: "assets/home/notifications/pic3.png"),
            ReadNotification(imag: "assets/home/notifications/pic4.png"),
            ReadNotification(imag: "assets/home/notifications/pic5.png"),
            ReadNotification(imag: "assets/home/notifications/pic6.png"),
            ReadNotification(imag: "assets/home/notifications/pic5.png"),
            ReadNotification(imag: "assets/home/notifications/pic6.png"),
            UnreadNotification(imag: "assets/home/notifications/pic1.png"),
            UnreadNotification(imag: "assets/home/notifications/pic2.png"),
            ReadNotification(imag: "assets/home/notifications/pic3.png"),
            ReadNotification(imag: "assets/home/notifications/pic4.png"),
            ReadNotification(imag: "assets/home/notifications/pic5.png"),
            ReadNotification(imag: "assets/home/notifications/pic6.png"),
          ],
        ),
      ),
    );
  }
}

class UnreadNotification extends StatelessWidget {
  final String imag;

  const UnreadNotification({
    Key? key,
    required this.imag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.5),
      ),
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
  }
}

class ReadNotification extends StatelessWidget {
  final String imag;

  const ReadNotification({
    Key? key,
    required this.imag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.5),
      ),
      tileColor: Colors.white,
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
  }
}
