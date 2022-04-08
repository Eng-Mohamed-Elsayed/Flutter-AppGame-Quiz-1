import 'package:quiz_app/Model/questions.dart';

class FlutterQuestions {
  static const String material = 'Flutter';

  static List<Question> _questions = [
    Question(
      text: 'What is Flutter ?',
      answers: [
        'An open-source development framework developed by Google',
        'A backend Language',
        'functional programming langauge',
        'An framework developed by Facebook',
      ],
      indexAnswer: 1,
    ),
    Question(
      text: 'What is Flutter?',
      answers: [
        'Android Development Kit',
        'IOS Development Kit',
        'Web Development Kit',
        'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
      ],
      indexAnswer: 4,
    ),
    Question(
      text: 'Which programing language is used by Flutter',
      answers: [
        'Ruby',
        'Dart',
        'C++',
        'Kotlin',
      ],
      indexAnswer: 2,
    ),
    Question(
      text: 'Who created Flutter?',
      answers: [
        'Facebook',
        'Adobe',
        'Google',
        'Microsoft',
      ],
      indexAnswer: 3,
    ),
    Question(
      text: "When was DART created?",
      answers: [
        '1983',
        '2001',
        '2010',
        '1940',
      ],
      indexAnswer: 1,
    ),
    Question(
      text: 'Who created Dart programing language?',
      answers: [
        'Lars Bak and Kasper Lund',
        'Brendan Eich',
        'Bjarne Stroustrup',
        'Jeremy Ashkenas',
      ],
      indexAnswer: 1,
    ),
    Question(
      text: 'What’s a pubspec.yaml file?',
      answers: [
        'file to test your project',
        'It’s a file where you can provide dependencies(plugins, Dart version, font, images) of your project',
        'it\'s just a readme file',
        'file to integrate with git',
      ],
      indexAnswer: 2,
    ),
    Question(
      text: 'Inorder To make A Button You Use?',
      answers: [
        'TextStyle',
        'Elevated Button',
        'Padding Widget',
        'Scaffold',
      ],
      indexAnswer: 2,
    ),
    Question(
      text: 'What is SafeArea widget?',
      answers: [
        'Widget that insets its child to avoid creative physical features of the display.',
        'To Add Margin to its child widget',
        'Widget that Implements the basic material design visual layout structure.',
        'Widget that show dialog message',
      ],
      indexAnswer: 1,
    ),
    Question(
      text: 'When Google Added Null Safety To Dart And Flutter',
      answers: [
        'In Flutter 3',
        'Flutter Does\'nt Support null safety',
        'In Dart 2.12 and Flutter 2',
        'First version of Flutter',
      ],
      indexAnswer: 3,
    ),
  ];
  static List<Question> get getquestions => _questions;

  static int get quetionsLength => _questions.length;

  static bool isFinsh(index) {
    return _questions.length == index;
  }
}
