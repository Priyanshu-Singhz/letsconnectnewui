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
  static TextStyle get smallheaderTheme => TextStyle(
        fontSize: 18,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get smalfontheaderTheme => TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        color: Color(0xff2D4379),
        fontWeight: FontWeight.w700,
      );
  static TextStyle get xheaderTheme => TextStyle(
        fontSize: 18,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get mediumTheme => TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get mediumblueTheme => TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        color: Colors.blue,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get mediumwhiteTheme => TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get mediumredTheme => TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        color: Colors.red,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get cardTheme => TextStyle(
        fontSize: 12,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get regularTheme => TextStyle(
        fontSize: 14,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get extraregularTheme => TextStyle(
        fontSize: 12,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get littlesmaller => TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        color: AppColors.fontColor,
        fontWeight: FontWeight.w400,
      );
}
