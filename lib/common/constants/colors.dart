import 'package:flutter/material.dart';

class AppColors {
  static const Color fontColor = Color(0xff0D253C);
  static const primaryColor = Color(0xff53C9f6);

  //gradient

  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    // stops: [0.0, 1.0],
    colors: [
      Color.fromRGBO(83, 201, 246, 1),
      Color.fromRGBO(48, 134, 235, 1),
    ],
  );
}
