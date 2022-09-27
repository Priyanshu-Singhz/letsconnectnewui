import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/screens/loginscreen/verifyotp.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.lightBlue),
          child: Image.asset(
            "assets/loginpage/doodles.png",
          ),
        ),
        Positioned(
          bottom: 0,
          child: ContainerCard(),
        ),
      ],
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextField(
                decoration: InputDecoration(
                  hintText: 'Ex: 12345 67890',
                ),
                keyboardType: TextInputType.number),
            Spacer(),
            ElevatedButton(
              style: TextButton.styleFrom(
                  // foregroundColor: Colors.black,
                  backgroundColor: Colors.lightBlueAccent,
                  minimumSize: Size(148, 48)),
              onPressed: () {
                Get.to(VefifyOtp());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Send OTP',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              height: 32,
              width: 125,
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
