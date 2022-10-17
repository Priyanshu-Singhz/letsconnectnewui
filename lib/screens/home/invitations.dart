import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/screens/home/persondetails.dart';

class Invitations extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<Invitations>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
          "Invitations",
          style: MyTextStyle.smallheaderTheme,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  color: Colors.blue,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Received',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Sent',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  ListView.builder(
                      itemCount: 18,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Get.to(PersonDetail());
                          },
                          child: Container(
                            child: ListTile(
                                trailing: Icon(Icons.navigate_next),
                                leading: CircleAvatar(
                                    backgroundImage: imgList[index]),
                                title: Text(names[index])),
                          ),
                        );
                      }),

                  // second tab bar view widget
                  ListView.builder(
                      itemCount: 18,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => CustomAlert());
                          },
                          child: Container(
                            child: ListTile(
                                trailing: Icon(Icons.delete),
                                leading: CircleAvatar(
                                    backgroundImage: imgList[index]),
                                title: Text(names[index])),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<TabController>('_tabController', _tabController));
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
        height: 185,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Revoke invitation?",
              style: MyTextStyle.mediumTheme,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Are you sure you want to revoke your invitation to Hannah? The user will not be notified.",
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
                    "Revoke",
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
