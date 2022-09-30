import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/createaccount/interest_view.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

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
              height: 30,
            ),
            Container(
              child: Image.asset(
                "assets/createaccount/image.png",
                height: 200,
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
