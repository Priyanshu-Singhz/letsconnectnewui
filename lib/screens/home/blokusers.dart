import 'package:flutter/material.dart';
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
  ];

  List imgList = [
    AssetImage('assets/home/notifications/pic1.png'),
    AssetImage('assets/home/notifications/pic1.png'),
    AssetImage('assets/home/notifications/pic1.png'),
    AssetImage('assets/home/notifications/pic1.png'),
    AssetImage('assets/home/notifications/pic1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Blocked Users",
          style: MyTextStyle.mediumTheme,
        ),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          content: Container(
                            alignment: Alignment.topLeft,
                            width: 312,
                            height: 208,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Unblock Hannah?",
                                  style: MyTextStyle.mediumTheme,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "This contact will be able send you messages after you unblock them.",
                                  style: MyTextStyle.regularTheme,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text("Cancel",
                                        style: MyTextStyle.mediumblueTheme),
                                    Container(
                                      height: 48,
                                      width: 110,
                                      decoration:
                                          BoxDecoration(color: Colors.blue),
                                      child: Text("Unblock"),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ));
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
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
