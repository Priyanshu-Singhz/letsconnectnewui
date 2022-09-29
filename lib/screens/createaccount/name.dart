import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/screens/createaccount/age.dart';

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

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
      height: 325,
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
                    "Welcome !",
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
                  "What should we call you ?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 43, 76),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
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
                  "Full Name",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextField(
                decoration: InputDecoration(
                  hintText: 'Ex : Priyanshu Singh',
                ),
                keyboardType: TextInputType.number),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "*Please use your real name",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
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
                  minimumSize: MaterialStateProperty.all(Size(400, 50)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  // elevation: MaterialStateProperty.all(3),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Get.to(Age());
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
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
