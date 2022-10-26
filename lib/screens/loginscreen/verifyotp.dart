import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsconnectnewui/common/widgets/custom_button.dart';
import 'package:letsconnectnewui/screens/createaccount/name.dart';
import 'package:sizer/sizer.dart';

class VefifyOtp extends StatefulWidget {
  const VefifyOtp({Key? key}) : super(key: key);

  @override
  State<VefifyOtp> createState() => _VefifyOtpState();
}

class _VefifyOtpState extends State<VefifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Scaffold(
          // resizeToAvoidBottomInset: false,   //If you do not want the verify button to come upwards
          bottomSheet: Container(
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                        height: 60.h,
                        width: 100.w,
                        decoration: BoxDecoration(color: Colors.lightBlue),
                        child: Image(
                          image: AssetImage("assets/doodlee.png"),
                          fit: BoxFit.fill,
                        )),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: ContainerCard(),
                ),
                CustomBack(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ContainerCard extends StatefulWidget {
  const ContainerCard({
    Key? key,
  }) : super(key: key);

  @override
  State<ContainerCard> createState() => _ContainerCardState();
}

class _ContainerCardState extends State<ContainerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.w),
      width: MediaQuery.of(context).size.width,
      height: 55.h,
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
                  child: AutoSizeText(
                    "Verify OTP",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 43, 76),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Row(
                  children: [
                    AutoSizeText(
                      "OTP was sent to ",
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      "+91 12345 67890",
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                AutoSizeText(
                  "Enter OTP",
                  maxLines: 1,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextField(
                decoration: InputDecoration(
                  hintText: 'Ex: 1 2 3 4 5 6',
                ),
                keyboardType: TextInputType.number),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                AutoSizeText(
                  "Resend OTP in 98s",
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomButton1(
              $height: 7.5.h,
              label: "Verify OTP",
              onTap: () {
                Get.to(Name());
              },
            ),
          ],
        ),
      ),
    );
  }
}
