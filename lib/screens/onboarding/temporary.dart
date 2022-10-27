import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Temp extends StatelessWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(700, 900),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            height: 900,
            width: 700,
            child: Center(
              child: AutoSizeText(
                "bdhbdhc",
                style: TextStyle(fontSize: 200),
                maxLines: 1,
              ),
            ),
          ),
        );
      },
    );
  }
}
