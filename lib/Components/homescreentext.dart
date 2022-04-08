import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenText extends StatelessWidget {
  final String inputText;
  final Color color;
  final double size;
  const HomeScreenText({
    Key? key,
    required this.inputText,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      style: GoogleFonts.nunito(
        textStyle: TextStyle(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }
}
