import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final double heightt;
  const SquareTile({super.key, required this.imagePath, required this.heightt});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(height * 0.005),
      decoration: BoxDecoration(
        border: Border.all(
          color: tdElevatedButton,
        ),
        borderRadius: BorderRadius.circular(10),
        color: tdTextField,
      ),
      child: Image(
        image: AssetImage(
          imagePath,
        ),
        height: heightt,
      ),
    );
  }
}
