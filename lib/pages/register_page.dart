import 'package:flutter/material.dart';
import 'package:link_opp/components/button_comp.dart';
import 'package:link_opp/components/square_tile.dart';
import 'package:link_opp/components/textfield_comp.dart';
import 'package:link_opp/constants/colors.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: tdBackground,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: height * 0.12),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: height * 0.05),
              alignment: Alignment.center,
              height: height * 0.1,
              child: const Image(
                image: AssetImage(
                  'lib/images/logo.png',
                ),
              ),
            ),
            const Text(
              'Create Account',
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
              labelText: 'Email',
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
              height: height * 0.02,
            ),
            TextFieldComp(
              controller: passwordController,
              labelText: 'Confirm Password',
              obscureText: true,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            ButtonComp(
              text: 'Register',
              onTap: signUserUp,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: const Text(
                      'Or continue with',
                      style: TextStyle(color: tdActionTexts),
                    ),
                  ),
                  const Expanded(
                    child: Divider(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SquareTile(imagePath: 'lib/images/google.png'),
                SizedBox(
                  width: width * 0.02,
                ),
                const SquareTile(imagePath: 'lib/images/apple.png')
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already a member?',
                  style: TextStyle(
                    color: tdActionTexts,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: tdElevatedButton,
                      fontWeight: FontWeight.w800,
                    ),
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
