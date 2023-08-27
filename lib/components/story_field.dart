import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class StoryField extends StatelessWidget {
  final String imagePath;
  final String numberOfPics;
  final String firstName;
  final String lastName;

  const StoryField({
    super.key,
    required this.imagePath,
    required this.numberOfPics,
    required this.firstName,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(15),
      ),
      width: width * 0.3,
      child: Stack(
        children: [
          Center(
            child: Image(
              image: AssetImage(
                imagePath,
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 30,
              width: 25,
              decoration: BoxDecoration(
                color: tdElevatedButton,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  numberOfPics,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              children: [
                Text(
                  firstName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  lastName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
