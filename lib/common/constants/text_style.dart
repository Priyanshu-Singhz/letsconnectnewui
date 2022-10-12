import 'package:flutter/material.dart';
import 'package:letsconnectnewui/common/constants/colors.dart';

class MyTextStyle {
  static const String fontFamily = 'Satoshi';

  static TextStyle get headerTheme => TextStyle(
        fontSize: 24,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get mediumTheme => TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get mediumredTheme => TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        color: Colors.red,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get regularTheme => TextStyle(
        fontSize: 14,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w400,
      );
}
