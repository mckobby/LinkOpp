import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class TextFieldComp extends StatelessWidget {
  final controller;
  final String labelText;
  final bool obscureText;

  const TextFieldComp(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: height * 0.02,
            horizontal: width * 0.03,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: tdElevatedButton),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: tdActionTexts),
          ),
          fillColor: tdTextField,
          filled: true,
          labelText: labelText,
        ),
      ),
    );
  }
}
