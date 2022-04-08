import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/constImagesandcolors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String toastMsg;
  final VoidCallback callback;
  final TextEditingController nameController;
  const CustomButton({
    Key? key,
    required this.text,
    this.toastMsg = '',
    required this.callback,
    required this.nameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12),
        primary: customButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
