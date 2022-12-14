import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/createaccount/gender.dart';
import 'package:letsconnectnewui/screens/createaccount/interest_view.dart';
import 'package:sizer/sizer.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          bottomSheet: Container(
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Stack(
              children: [
                Positioned(
                  bottom: 68.h,
                  top: 0,
                  left: 0,
                  right: 1.w,
                  child: Container(
                    child: Image(
                      image: AssetImage(
                        "assets/createaccount/dood.png",
                      ),
                      color: Colors.white,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: ContainerCard(),
                ),
                CustomBack(
                  $onTap: () {
                    Get.to(Gender());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.2.h, horizontal: 6.w),
      width: MediaQuery.of(context).size.width,
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Text(
                    "Let's add a profile picture !",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 43, 76),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    "We won???t display it publicly. We believe you don???t look your age ????",
                    style: TextStyle(
                      color: Color(0xff2D4379),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: new Icon(
                            Icons.camera_alt,
                            color: Color(0xff3086EB),
                          ),
                          title: new Text(
                            'Take Photo',
                            style: MyTextStyle.regularTheme,
                          ),
                          onTap: () {},
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                          child: Image.asset(
                              "assets/createaccount/divideline.png"),
                        ),
                        ListTile(
                          leading: new Icon(
                            Icons.photo,
                            color: Color(0xff3086EB),
                          ),
                          title: new Text(
                            'Choose from gallary',
                            style: MyTextStyle.regularTheme,
                          ),
                          onTap: () {},
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                child: Image.asset(
                  "assets/createaccount/image.png",
                  height: 30.h,
                  width: 100.w,
                ),
              ),
            ),
            Spacer(),
            CustomButton(
              label: 'Next',
              onTap: () {
                Get.to(() => InterestView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
