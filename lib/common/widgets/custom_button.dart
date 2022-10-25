// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/constants/text_style.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String label;
  const CustomButton({
    Key? key,
    this.onTap,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return InkWell(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            height: 48,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                stops: [0.0, 1.0],
                colors: [
                  Colors.blue.shade500,
                  Colors.blue.shade400,
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 16,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomButton1 extends StatelessWidget {
  final Function()? onTap;
  final String label;

  final $height;
  const CustomButton1({
    Key? key,
    this.onTap,
    required this.label,
    this.$height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: $height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            stops: [0.0, 1.0],
            colors: [
              Colors.blue.shade500,
              Colors.blue.shade400,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNext extends StatelessWidget {
  final Function()? onTap;
  final String label;
  const CustomNext({Key? key, this.onTap, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: 168,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffFACC15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: MyTextStyle.mediumTheme,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_forward,
              color: Color(0xff0D253C),
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBack extends StatelessWidget {
  const CustomBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      top: 56,
      child: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: 40,
          width: 40,
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

class CustomslightupBack extends StatelessWidget {
  const CustomslightupBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      top: 40,
      child: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: 40,
          width: 40,
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

class CustomMore extends StatelessWidget {
  const CustomMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 288,
      top: 40,
      child: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: 40,
          width: 40,
          child: Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
