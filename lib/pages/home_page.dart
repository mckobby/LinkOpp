import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: tdBackground,
      appBar: AppBar(
        backgroundColor: tdElevatedButton,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            const Text(
              'LinkOpp',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: signOut,
              child: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
