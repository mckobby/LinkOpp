import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:link_opp/components/story_field.dart';
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

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: tdBackground,
      appBar: AppBar(
        backgroundColor: tdElevatedButton,
        title: Column(
          children: [
            Row(
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
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.045,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage('lib/images/apple.png'),
                        radius: height * 0.032,
                        backgroundColor: Colors.white,
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          child: TextField(
                            controller: textController,
                            decoration: InputDecoration(
                              hintText: 'LinkOpp with the world...',
                              hintStyle: TextStyle(
                                color: tdActionTexts.withOpacity(0.5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: tdElevatedButton),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: tdActionTexts),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: height * 0.01,
                                horizontal: width * 0.03,
                              ),
                              fillColor: tdTextField,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.image_sharp,
                            color: tdActionTexts,
                            size: height * 0.045,
                          ),
                          const Text(
                            'Photo',
                            style: TextStyle(
                              color: tdActionTexts,
                              fontSize: 13,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: width * 0.045),
                color: Colors.white,
                height: height * 0.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const StoryField(
                      imagePath: 'lib/images/apple.png',
                      numberOfPics: '1',
                      firstName: 'Michael',
                      lastName: 'Kissi',
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/apple.png',
                      numberOfPics: '1',
                      firstName: 'Michael',
                      lastName: 'Kissi',
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/apple.png',
                      numberOfPics: '1',
                      firstName: 'Michael',
                      lastName: 'Kissi',
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/apple.png',
                      numberOfPics: '1',
                      firstName: 'Michael',
                      lastName: 'Kissi',
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
