import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  final index;
  final numofQuestions;
  const QuestionNumber({
    Key? key,
    required this.index,
    required this.numofQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      child: Text(
        "Question $index/$numofQuestions",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
