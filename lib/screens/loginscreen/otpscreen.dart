import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

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
          ElevatedButton(
            style: TextButton.styleFrom(
                // foregroundColor: Colors.black,
                backgroundColor: Color(0xffFACC15),
                minimumSize: Size(148, 48)),
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Next',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
