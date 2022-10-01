import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_buttons_ns/grouped_buttons_ns.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/createaccount/image.dart';

class Gender extends StatelessWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        decoration: BoxDecoration(color: Colors.lightBlue),
        child: Stack(
          children: [
            Positioned(
              bottom: 400,
              top: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: Image.asset(
                  "assets/doodle.png",
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ContainerCard(),
            ),
          ],
        ),
      ),
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
      width: MediaQuery.of(context).size.width,
      height: 551,
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
                    "How would you describe your gender ?",
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
              height: 15,
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
              height: 40,
            ),
            RadioButtonGroup(
                labels: <String>["18 - 21", "21 - 26", "26+"],
                onSelected: (String selected) => print(selected)),
            Spacer(),
            CustomButton(
              label: 'Next',
              onTap: () {
                Get.to(ProfileImage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
