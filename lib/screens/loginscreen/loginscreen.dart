import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/screens/loginscreen/otpscreen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/loginpage/background.png",
            fit: BoxFit.cover,
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
          Spacer(),
          Text("We'll send you a six digit verification code",
              style: TextStyle(
                fontSize: 24,
              )),
          Spacer(),
          ElevatedButton(
            style: TextButton.styleFrom(
                // foregroundColor: Colors.black,
                backgroundColor: Colors.lightBlueAccent,
                minimumSize: Size(148, 48)),
            onPressed: () {
              Get.to(OtpScreen());
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
    );
  }
}
