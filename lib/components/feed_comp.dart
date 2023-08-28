import 'package:flutter/material.dart';

import '../constants/colors.dart';

class FeedComp extends StatelessWidget {
  final String profileImage;
  final String profileName;

  final String content;
  final String time;

  final String mainImage;
  final String comments;

  final String shares;
  final String favorites;

  final String analytics;

  const FeedComp({
    super.key,
    required this.profileImage,
    required this.profileName,
    required this.content,
    required this.time,
    required this.mainImage,
    required this.comments,
    required this.shares,
    required this.favorites,
    required this.analytics,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      color: tdDrawer,
      width: width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.045),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: height * 0.032,
                      backgroundImage: AssetImage(profileImage),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    SizedBox(
                      width: width * 0.55,
                      child: Text(
                        profileName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.grey[300],
                      size: 25,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.045),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.8,
                  child: Text(
                    content,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.1,
                  child: Text(
                    time,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(mainImage),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.045),
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
                    Text(
                      comments,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
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
                    Text(
                      shares,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      favorites,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.analytics_outlined,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      analytics,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
