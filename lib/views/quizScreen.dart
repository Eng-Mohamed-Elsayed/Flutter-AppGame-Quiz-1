import 'package:flutter/material.dart';
import 'package:quiz_app/Components/customquitButton.dart';
import 'package:quiz_app/Components/optionButton.dart';
import 'package:quiz_app/Components/questionCategoryText.dart';
import 'package:quiz_app/Components/questionNumberText.dart';
import 'package:quiz_app/Components/questionText.dart';
import 'package:quiz_app/Constants/constImagesandcolors.dart';
import 'package:quiz_app/Constants/cosntStyles.dart';
import 'package:quiz_app/Controller/q-controller.dart';
import 'package:quiz_app/Model/questions.dart';
import 'package:quiz_app/views/gradeScreen.dart';

class QuizScreen extends StatefulWidget {
  final name;
  const QuizScreen({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String materialText = FlutterQuestions.material;

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Question> _data = FlutterQuestions.getquestions;
  Question snap = Question(
    text: "",
    answers: [],
    indexAnswer: 0,
  );
  int questionNum = 1;
  int index = 0;
  var grade = 0;
  int id = 0;

  void checkfun(BuildContext context) {
    return setState(() {
      print('Before  questionNum $questionNum ,,index $index ');
      if (_data.length != questionNum) {
        questionNum++;
      }
      index++;
      print('after   questionNum $questionNum ,,index $index ');
      if (FlutterQuestions.isFinsh(index)) {
        var route = MaterialPageRoute(
          builder: (context) => GradeScreen(
            yourgrade: grade,
            name: widget.name,
            totalgrade: FlutterQuestions.quetionsLength,
          ),
        );
        Navigator.pushReplacement(context, route);
      }
    });
  }

  void checkOption(setId) {
    setState(() {
      id = setId;
      if (snap.indexAnswer == id) {
        grade++;
      }
    });
    Future.delayed(Duration(milliseconds: 300), () {
      checkfun(context);
    });
  }

  @override
  void initState() {
    grade = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (index <= _data.length - 1) snap = _data[index];
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: homeScreenBackGroundColor,
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionCategory(
                    materialText: widget.materialText,
                  ),
                  QuestionNumber(
                    index: questionNum,
                    numofQuestions: FlutterQuestions.quetionsLength,
                  ),
                  Expanded(
                    flex: 3,
                    child: QuestionText(
                      text: snap.text,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      checkOption(1);
                    },
                    child: Option(
                      text: snap.answers[0],
                      id: id,
                      answer: snap.indexAnswer,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      checkOption(2);
                    },
                    child: Option(
                      text: snap.answers[1],
                      id: id,
                      answer: snap.indexAnswer,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      checkOption(3);
                    },
                    child: Option(
                      text: snap.answers[2],
                      id: id,
                      answer: snap.indexAnswer,
                    ),
                  ),
                  const SizedBox(height: 5),
                  InkWell(
                    onTap: () {
                      checkOption(4);
                    },
                    child: Option(
                      text: snap.answers[3],
                      id: id,
                      answer: snap.indexAnswer,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomQuitButton(deviceWidth: deviceWidth),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            checkfun(context);
                          },
                          child: Text("Skip"),
                          style: Styles.skipButtonSytle(deviceWidth),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
