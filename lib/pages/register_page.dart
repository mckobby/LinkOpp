import 'package:flutter/material.dart';
import 'package:link_opp/components/button_comp.dart';
import 'package:link_opp/components/square_tile.dart';
import 'package:link_opp/components/textfield_comp.dart';
import 'package:link_opp/constants/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController1 = TextEditingController();

  bool passwordObscured = true;

  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: tdBackground,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxHeight > constraints.maxWidth) {
            return SingleChildScrollView(
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
                    keyboardType: TextInputType.emailAddress,
                    controller: usernameController,
                    labelText: 'Email',
                    obscureText: false,
                    suffixIcon: const Icon(
                      Icons.email_outlined,
                      color: tdTextField,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  TextFieldComp(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    labelText: 'Password',
                    obscureText: passwordObscured,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          passwordObscured = !passwordObscured;
                        });
                      },
                      child: Icon(
                        passwordObscured
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  TextFieldComp(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController1,
                    labelText: 'Confirm Password',
                    obscureText: passwordObscured,
                    suffixIcon: Icon(
                      passwordObscured
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: tdTextField,
                    ),
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
                    padding: EdgeInsets.symmetric(vertical: height * 0.02),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
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
                      SquareTile(
                        imagePath: 'lib/images/google.png',
                        heightt: height * 0.06,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      SquareTile(
                        imagePath: 'lib/images/apple.png',
                        heightt: height * 0.06,
                      )
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
            );
          } else {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                top: height * 0.12,
                bottom: height * 0.04,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * 0.025),
                    alignment: Alignment.center,
                    height: height * 0.2,
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
                    height: height * 0.035,
                  ),
                  TextFieldComp(
                    keyboardType: TextInputType.emailAddress,
                    controller: usernameController,
                    labelText: 'Email',
                    obscureText: false,
                    suffixIcon: const Icon(
                      Icons.email_outlined,
                      color: tdTextField,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  TextFieldComp(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    labelText: 'Password',
                    obscureText: passwordObscured,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          passwordObscured = !passwordObscured;
                        });
                      },
                      child: Icon(
                        passwordObscured
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  TextFieldComp(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController1,
                    labelText: 'Confirm Password',
                    obscureText: passwordObscured,
                    suffixIcon: Icon(
                      passwordObscured
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: tdTextField,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.07,
                  ),
                  ButtonComp(
                    text: 'Register',
                    onTap: signUserUp,
                    padding: EdgeInsets.symmetric(vertical: height * 0.04),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.01),
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
                      SquareTile(
                        imagePath: 'lib/images/google.png',
                        heightt: height * 0.12,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      SquareTile(
                        imagePath: 'lib/images/apple.png',
                        heightt: height * 0.12,
                      )
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
            );
          }
        },
      ),
    );
  }
}
