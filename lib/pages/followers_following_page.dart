import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class FollowersFollowing extends StatelessWidget {
  const FollowersFollowing({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: tdBackground,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: tdElevatedButton,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_backspace_outlined,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  'Followers || Following',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                const Icon(
                  Icons.people_outline,
                  size: 20,
                )
              ],
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.search_outlined,
              ),
            )
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.01),
            child: Container(
              padding: EdgeInsets.all(height * 0.02),
              color: tdDrawer,
              width: width * 0.485,
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: Column(
                  children: [
                    Text(
                      'Followers (6)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.combine(
                          [TextDecoration.underline, TextDecoration.overline],
                        ),
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: height * 0.02,
                          backgroundImage:
                              const AssetImage('lib/images/awo.jpg'),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Owolabi Code\'s',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.5,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: height * 0.02,
                          backgroundImage:
                              const AssetImage('lib/images/legpresec.jpg'),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Salis',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: height * 0.02,
                          backgroundImage:
                              const AssetImage('lib/images/owass.jpg'),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Artistry Media',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: height * 0.02,
                          backgroundImage:
                              const AssetImage('lib/images/ako.jpg'),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Kwaku Gene',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: height * 0.02,
                          backgroundImage:
                              const AssetImage('lib/images/man.jpg'),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Yaa Trapqueen',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: height * 0.02,
                          backgroundImage:
                              const AssetImage('lib/images/ame.jpg'),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Arun Raghav',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.01),
            child: Container(
              padding: EdgeInsets.all(height * 0.02),
              color: tdDrawer,
              width: width * 0.485,
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: Column(
                  children: [
                    Text(
                      'Following (2)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.combine(
                          [TextDecoration.underline, TextDecoration.overline],
                        ),
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: height * 0.02,
                          backgroundImage:
                              const AssetImage('lib/images/food.jpg'),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Gideon Aduku',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.5,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: height * 0.02,
                          backgroundImage:
                              const AssetImage('lib/images/mikeee.jpg'),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        const Text(
                          'Aiman Zubair',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
