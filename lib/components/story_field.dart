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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: SizedBox(
        width: width * 0.3,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage(
                  imagePath,
                ),
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
            ),
            Stack(
              children: [
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        firstName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          shadows: [
                            Shadow(
                              color: Colors.white,
                              offset: Offset(0.9, 0.5),
                              blurRadius: 0.5,
                            )
                          ],
                        ),
                      ),
                      Text(
                        lastName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          shadows: [
                            Shadow(
                              color: Colors.white,
                              offset: Offset(0.9, 0.5),
                              blurRadius: 0.5,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
