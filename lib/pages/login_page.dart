import 'package:flutter/material.dart';
import 'package:link_opp/components/button_comp.dart';
import 'package:link_opp/components/textfield_comp.dart';
import 'package:link_opp/constants/colors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: tdBackground,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.1, bottom: height * 0.05),
              alignment: Alignment.center,
              height: height * 0.1,
              child: const Image(
                image: AssetImage(
                  'lib/images/logo.png',
                ),
              ),
            ),
            const Text(
              'Welcome back!',
              style: TextStyle(
                color: tdActionTexts,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            TextFieldComp(
              controller: usernameController,
              labelText: 'Username',
              obscureText: false,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextFieldComp(
              controller: passwordController,
              labelText: 'Password',
              obscureText: true,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: tdActionTexts,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            const ButtonComp()
          ],
        ),
      ),
    );
  }
}
