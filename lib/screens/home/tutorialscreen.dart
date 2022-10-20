import 'package:flutter/material.dart';

//wherever want to use this just type Tutorial() and import this file !!

class Tutorial extends StatelessWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.swipe_vertical, color: Colors.white),
          SizedBox(height: 16),
          Container(
            height: 40,
            width: 142,
            child: Text(
              "Swipe vertically to scroll through profiles",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 16),
          InkWell(
            onTap: () {},
            child: Container(
              height: 38,
              width: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(child: Text("Okay")),
            ),
          ),
        ],
      ),
    );
  }
}
