import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';

class BlkUsers extends StatefulWidget {
  BlkUsers({Key? key}) : super(key: key);

  @override
  State<BlkUsers> createState() => _BlkUsersState();
}

class _BlkUsersState extends State<BlkUsers> {
  final List<String> names = [
    "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey"
        "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey"
        "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey"
        "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey"
        "Hannah Burress",
    "Étienne DeGrasse",
    "Aileen Fullbright",
    "Royce Pouchard",
    "Marx Hershey"
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
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Blocked User (39)",
          style: MyTextStyle.smallheaderTheme,
        ),
      ),
      body: ListView.builder(
          itemCount: 18,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                showDialog(
                    context: context, builder: (context) => CustomAlert());
              },
              child: Container(
                child: ListTile(
                    trailing: Icon(Icons.block),
                    leading: CircleAvatar(backgroundImage: imgList[index]),
                    title: Text(names[index])),
              ),
            );
          }),
    );
  }
}

class CustomAlert extends StatelessWidget {
  const CustomAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Container(
        alignment: Alignment.topLeft,
        width: 312,
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Unblock Hannah?",
              style: MyTextStyle.mediumTheme,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "This contact will be able send you messages after you unblock them.",
              style: MyTextStyle.regularTheme,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    child: Text("Cancel", style: MyTextStyle.mediumblueTheme),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 95,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(13)),
                  child: Text(
                    "Unblock",
                    style: MyTextStyle.mediumwhiteTheme,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
