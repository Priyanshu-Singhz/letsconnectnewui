import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                  hintText: 'Ex: 12345 67890',
                ),
                keyboardType: TextInputType.number),
            SizedBox(height: 40),
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
                      minimumSize: MaterialStateProperty.all(Size(400, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      // elevation: MaterialStateProperty.all(3),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Get.to(VefifyOtp());
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Text("Send OTP",
                            style: TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ))))),
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
