import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return const SizedBox(
      child: Center(
        child: Text(
          'Your messages will appear here',
          style: TextStyle(
            color: tdActionTexts,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
