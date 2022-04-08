import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quiz_app/views/quizScreen.dart';

class ToastFunc {
  String fieldText;
  final String toastMsg;
  ToastFunc({
    required this.fieldText,
    this.toastMsg = '',
  });

  void controlText(BuildContext context) {
    if (fieldText.isEmpty) {
      Fluttertoast.showToast(
        msg: "Please Input Your Name",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.teal,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }
    if (fieldText.length < 3) {
      Fluttertoast.showToast(
        msg: "Name is Too Short",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.teal,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }
    if (fieldText.contains('@') ||
        fieldText.contains('!') ||
        fieldText.contains('\$') ||
        fieldText.contains('#')) {
      Fluttertoast.showToast(
        msg: "Name Can't Contain Special Character",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.teal,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => QuizScreen(
          name: fieldText,
        ),
      ),
    );
  }
}
