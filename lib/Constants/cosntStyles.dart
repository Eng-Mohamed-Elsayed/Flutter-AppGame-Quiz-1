import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/constImagesandcolors.dart';

double x = 0;

class Styles {
  double deviceWidth;
  Styles({
    required this.deviceWidth,
  });

  static ButtonStyle skipButtonSytle(double deviceWidth) {
    return ElevatedButton.styleFrom(
      primary: customButtonColor,
      padding: EdgeInsets.symmetric(
          horizontal: deviceWidth * 0.1, vertical: deviceWidth * 0.02),
      textStyle: TextStyle(
        fontSize: deviceWidth * 0.07,
      ),
    );
  }
}
