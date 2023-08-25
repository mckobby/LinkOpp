import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class ButtonComp extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final EdgeInsetsGeometry padding;

  const ButtonComp({
    super.key,
    required this.onTap,
    required this.text,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: EdgeInsets.symmetric(horizontal: width * 0.05),
        decoration: BoxDecoration(
            color: tdElevatedButton, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
