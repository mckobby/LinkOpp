import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class ButtonComp extends StatelessWidget {
  final Function()? onTap;
  const ButtonComp({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height * 0.02),
        margin: EdgeInsets.symmetric(horizontal: width * 0.05),
        decoration: BoxDecoration(
          color: tdElevatedButton,
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            'Sign In',
            style: TextStyle(
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
