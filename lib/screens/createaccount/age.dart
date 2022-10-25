import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_buttons_ns/grouped_buttons_ns.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/createaccount/gender.dart';
import 'package:sizer/sizer.dart';

class Age extends StatelessWidget {
  const Age({Key? key}) : super(key: key);

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
                  bottom: 65.h,
                  top: 2.h,
                  left: 0,
                  child: Container(
                    width: 100.w,
                    child: Image(
                      image: AssetImage("assets/createaccount/dood.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: ContainerCard(),
                ),
                CustomBack(),
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
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      width: 100.w,
      height: 65.h,
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
                Text(
                  "How old are you?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 43, 76),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
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
                    "We won’t display it publicly. We believe you don’t look your age 😉",
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
            RadioButtonGroup(
                labels: <String>["18 - 21", "21 - 26", "26+"],
                onSelected: (String selected) => print(selected)),
            Spacer(),
            CustomButton(
              label: 'Next',
              onTap: () {
                Get.to(Gender());
              },
            ),
          ],
        ),
      ),
    );
  }
}
