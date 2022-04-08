import 'package:flutter/material.dart';

class QuestionCategory extends StatelessWidget {
  final String materialText;
  const QuestionCategory({
    Key? key,
    required this.materialText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      materialText + " Quiz",
      style: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontSize: 20,
      ),
    );
  }
}
