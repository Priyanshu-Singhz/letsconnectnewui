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
                  right: 1.w,
                  child: Container(
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
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  stops: [0.0, 1.0],
                  colors: [
                    Colors.blue.shade500,
                    Colors.blue.shade400,
                  ],
                ),
                color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(90.w, 50)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  // elevation: MaterialStateProperty.all(3),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Get.to(Gender());
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    bottom: 10,
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
