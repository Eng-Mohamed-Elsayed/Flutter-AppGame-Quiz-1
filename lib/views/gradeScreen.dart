import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Constants/constImagesandcolors.dart';
import 'package:quiz_app/views/welcomeScreen.dart';
import 'package:audioplayers/audioplayers.dart';

class GradeScreen extends StatefulWidget {
  final yourgrade;
  final name;
  final totalgrade;
  const GradeScreen({
    Key? key,
    this.yourgrade,
    required this.name,
    required this.totalgrade,
  }) : super(key: key);

  @override
  _GradeScreenState createState() => _GradeScreenState();
}

class _GradeScreenState extends State<GradeScreen> {
  @override
  void initState() {
    AudioCache audio = AudioCache();
    if (widget.yourgrade >= widget.totalgrade / 2) {
      audio.play("audio/clapSound.wav");
    } else {
      audio.play("audio/failSound.mp3");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backGroundimage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(
                flex: 3,
              ),
              Text(
                widget.yourgrade >= widget.totalgrade / 2
                    ? 'You Passed ${widget.name}'
                    : 'You Failed \n Try Again ${widget.name}',
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(
                flex: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Score: ${widget.yourgrade}",
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(),
                    ),
                  );
                },
                child: const Text("Start Again"),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
