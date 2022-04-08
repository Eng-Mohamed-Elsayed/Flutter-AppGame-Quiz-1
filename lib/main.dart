import 'package:flutter/material.dart';
import 'package:quiz_app/views/welcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'quize',
      home: WelcomeScreen(),
    );
  }
}
