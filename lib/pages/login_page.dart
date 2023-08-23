import 'package:flutter/material.dart';
import 'package:link_opp/components/button_comp.dart';
import 'package:link_opp/components/square_tile.dart';
import 'package:link_opp/components/textfield_comp.dart';
import 'package:link_opp/constants/colors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

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
              padding: EdgeInsets.only(right: width * 0.05),
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
            ButtonComp(
              onTap: signUserIn,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: const Text(
                      'Or continue with',
                      style: TextStyle(
                        color: tdActionTexts,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SquareTile(
                  imagePath: 'lib/images/google.png',
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                const SquareTile(
                  imagePath: 'lib/images/apple.png',
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Not a member?',
                  style: TextStyle(
                    color: tdActionTexts,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                const Text(
                  'Register now',
                  style: TextStyle(
                    color: tdElevatedButton,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
