import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final nameController;
  const CustomTextField({
    Key? key,
    required this.text,
    this.nameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        controller: nameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: Color(0xFF1C2341),
          filled: true,
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
    );
  }
}
