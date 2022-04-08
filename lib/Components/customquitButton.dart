import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/constImagesandcolors.dart';
import 'package:quiz_app/views/welcomeScreen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class CustomQuitButton extends StatelessWidget {
  const CustomQuitButton({
    Key? key,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.cancel_outlined),
      label: Text('Quit Quiz'),
      onPressed: () {
        Future.delayed(Duration(milliseconds: 100), () {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.INFO_REVERSED,
            borderSide: BorderSide(color: homeScreenBackGroundColor, width: 2),
            width: 450,
            buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
            headerAnimationLoop: false,
            animType: AnimType.BOTTOMSLIDE,
            title: 'Quit!',
            desc: 'You are about to quit the quiz \n Quit?',
            showCloseIcon: false,
            btnCancelOnPress: () {},
            btnOkOnPress: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeScreen(),
                ),
              );
            },
          )..show();
        });
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(10, 25, 49, 1),
        padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.02, vertical: deviceWidth * 0.02),
        textStyle: TextStyle(
          fontSize: deviceWidth * 0.06,
        ),
        elevation: 0,
      ),
    );
  }
}
