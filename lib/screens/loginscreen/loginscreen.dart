import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/loginscreen/verifyotp.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        decoration: BoxDecoration(color: Colors.lightBlue),
        child: Stack(
          children: [
            Positioned(
              bottom: 340,
              top: 10,
              child: Container(
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: Image.asset(
                  "assets/doodlee.png",
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
      height: 441,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/onboarding/line.png",
                      ),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 43, 76),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "We'll send you a six digit one time verification ",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "code",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  "Phone Number",
                  style: TextStyle(
                      color: Color(0xff2D4379),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    height: 25,
                    width: 67,
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 30,
                          child: Image(
                            image: AssetImage(
                              "assets/loginpage/flag.png",
                            ),
                          ),
                        ),
                        Text("+91")
                      ],
                    ),
                  ),
                  hintText: 'Ex: 12345 67890',
                ),
                keyboardType: TextInputType.number),
            SizedBox(height: 40),
            CustomButton1(
                label: "Send OTP",
                onTap: () {
                  Get.to(VefifyOtp());
                }),
            SizedBox(height: 45),
            Text(
              "OR SIGN IN WITH",
              style: TextStyle(
                color: Color.fromARGB(255, 3, 43, 76),
                letterSpacing: 2,
                fontSize: 14,
              ),
            ),
            Spacer(),
            Container(
              height: 32,
              width: 176,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/loginpage/google.png"),
                  Spacer(),
                  Image.asset("assets/loginpage/facebook.png"),
                  Spacer(),
                  Image.asset("assets/loginpage/apple.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
