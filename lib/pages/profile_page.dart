import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final textController = TextEditingController();

    return Scaffold(
      backgroundColor: tdDrawer,
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
                  'My Profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                const Icon(
                  Icons.person_3_outlined,
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
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                color: tdBackground,
                height: height * 0.2,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.08,
                  left: width * 0.045,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: height * 0.1,
                    backgroundImage: const AssetImage('lib/images/kmj.jpg'),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.045,
                      top: height * 0.3,
                    ),
                    child: const Text(
                      'Motivated Mindset',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    child: Row(
                      children: [
                        Text(
                          '6 followers',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Text(
                          '2 following',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    child: const Text(
                      'Web App Developer || Mobile App Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Posts',
                          style: TextStyle(
                            color: tdActionTexts,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            backgroundColor: tdBackground,
                          ),
                        ),
                        Text(
                          'About',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Photos',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Videos',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Divider(),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            SizedBox(width: width * 0.03),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: width * 0.03),
                            Text(
                              '||',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: width * 0.03),
                            Text(
                              'Digital Creator',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.link,
                              color: Colors.white,
                            ),
                            SizedBox(width: width * 0.03),
                            Text(
                              'tourafrique.blogspot.com',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                            SizedBox(width: width * 0.03),
                            Text(
                              'See more about yourself',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.25,
                              vertical: height * 0.01,
                            ),
                            color: tdActionTexts,
                            child: const Text(
                              'Edit Public Details',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  const AssetImage('lib/images/kmj.jpg'),
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
                                      borderSide: const BorderSide(
                                        color: tdElevatedButton,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: tdActionTexts),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: height * 0.01,
                                      horizontal: width * 0.05,
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
                        SizedBox(
                          height: height * 0.01,
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage('lib/images/kmj.jpg'),
                          radius: height * 0.032,
                        ),
                        SizedBox(width: width * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Motivated Mindset',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Aug 14',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    child: Text(
                      'Rate my newest picture over 10',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage(
                        'lib/images/kmj.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(width * 0.045, 0, width * 0.045, height * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.comment,
                              color: Colors.white,
                              size: 22,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            const Text(
                              '0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 22,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            const Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.favorite,
                              color: tdLike,
                              size: 22,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            const Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.analytics,
                              color: Colors.white,
                              size: 22,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            const Text(
                              '9',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
