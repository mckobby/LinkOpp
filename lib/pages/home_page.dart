import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:link_opp/components/feed_comp.dart';
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
              Container(
                color: tdDrawer,
                padding: EdgeInsets.symmetric(vertical: height * 0.015),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: const AssetImage('lib/images/kmj.jpg'),
                        radius: height * 0.032,
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
                            color: Colors.white,
                            size: height * 0.045,
                          ),
                          const Text(
                            'Photo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                padding: EdgeInsets.only(left: width * 0.045),
                color: tdDrawer,
                height: height * 0.22,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const StoryField(
                      imagePath: 'lib/images/kmj.jpg',
                      numberOfPics: '2',
                      firstName: 'Motivated',
                      lastName: 'Mindset',
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/miccc.jpg',
                      numberOfPics: '1',
                      firstName: 'Kehinde',
                      lastName: 'David',
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/aplus.jpg',
                      numberOfPics: '1',
                      firstName: 'Kwame',
                      lastName: 'Dave',
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/awo.jpg',
                      numberOfPics: '1',
                      firstName: 'Ahmed',
                      lastName: 'Donkoh',
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/meezy.jpg',
                      numberOfPics: '2',
                      firstName: 'Mercy',
                      lastName: 'Kipsos',
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/spa.jpg',
                      numberOfPics: '1',
                      firstName: 'Yaa',
                      lastName: 'Fremah',
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const StoryField(
                      imagePath: 'lib/images/com.jpg',
                      numberOfPics: '7',
                      firstName: 'Sweetness',
                      lastName: 'Emefa',
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const FeedComp(
                profileImage: 'lib/images/food.jpg',
                profileName: 'April M Adler',
                content:
                    'I am looking for a perfect web designer and developer, Inbox me on messenger',
                time: '48m',
                mainImage: 'lib/images/man.jpg',
                comments: '1',
                shares: '0',
                favorites: '0',
                analytics: '9',
              ),
              const SizedBox(
                height: 3,
              ),
              const FeedComp(
                profileImage: 'lib/images/ako.jpg',
                profileName: 'Ghana Yesu',
                content: 'Kasoa and wonders',
                time: '48m',
                mainImage: 'lib/images/ame.jpg',
                comments: '47',
                shares: '3',
                favorites: '338',
                analytics: '12.8K',
              ),
              const SizedBox(
                height: 3,
              ),
              const FeedComp(
                profileImage: 'lib/images/godd.jpg',
                profileName: 'Efo Kofi',
                content: 'Guess the location',
                time: '3d',
                mainImage: 'lib/images/wen.jpg',
                comments: '91',
                shares: '0',
                favorites: '188',
                analytics: '1.1M',
              ),
              const SizedBox(
                height: 3,
              ),
              const FeedComp(
                profileImage: 'lib/images/roz.jpg',
                profileName: 'Buju Mahogany',
                content: 'Art is life',
                time: '7h',
                mainImage: 'lib/images/val.jpg',
                comments: '1',
                shares: '0',
                favorites: '6,756',
                analytics: '478.2K',
              )
            ],
          ),
        ],
      ),
    );
  }
}
