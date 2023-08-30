import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

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
                  'Groups',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                const Icon(
                  Icons.groups_3_outlined,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: tdDrawer,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.045,
                vertical: height * 0.01,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: const AssetImage(
                        'lib/images/com.jpg',
                      ),
                      height: height * 0.1,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Trotro Diary',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '229 Members',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.045),
            child: const InkWell(
              child: Text(
                'Show more',
                style: TextStyle(
                  color: tdActionTexts,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
