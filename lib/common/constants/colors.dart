import 'package:flutter/material.dart';

class AppColors {
  static const Color fontColor = Color(0xff0D253C);

  //gradient

  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.center,
    stops: [0.0, 1.0],
    colors: [
      Colors.blue.shade500,
      Colors.blue.shade400,
    ],
  );
}
