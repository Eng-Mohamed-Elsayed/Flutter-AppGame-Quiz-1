import 'package:flutter/material.dart';
import 'package:quiz_app/Components/customButton.dart';
import 'package:quiz_app/Components/customtextfield.dart';
import 'package:quiz_app/Components/homescreentext.dart';
import 'package:quiz_app/Constants/constImagesandcolors.dart';
import 'package:quiz_app/Constants/constFunctions/toastFunc.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backGroundimage),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 4),
                const HomeScreenText(
                  inputText: "Let's Test Your Flutter Basic",
                  color: homeScreenText,
                  size: 30,
                ),
                const HomeScreenText(
                  inputText: "Enter Your Name Below",
                  color: homeScreenText,
                  size: 15,
                ),
                const Spacer(),
                CustomTextField(
                  text: "Enter Your Name",
                  nameController: nameController,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  child: CustomButton(
                    nameController: nameController,
                    text: "Let's Start Quiz",
                    toastMsg: "Please Input Your name",
                    callback: () => ToastFunc(
                      fieldText: nameController.text.toString(),
                    ).controlText(context),
                  ),
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
