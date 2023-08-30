import 'package:flutter/material.dart';
import 'package:link_opp/components/notifications_listtile.dart';
import 'package:link_opp/constants/colors.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
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
                  'Trending',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                const Icon(
                  Icons.whatshot_outlined,
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
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                color: tdDrawer,
                margin: const EdgeInsets.symmetric(
                  vertical: 1,
                  horizontal: 3,
                ),
                child: NotificationsListTile(
                  imagePath: 'lib/images/godd.jpg',
                  profileName: '#1',
                  details: 'Rich till I Die',
                  onTap: () {},
                ),
              ),
              Card(
                color: tdDrawer,
                margin: const EdgeInsets.symmetric(
                  vertical: 1,
                  horizontal: 3,
                ),
                child: NotificationsListTile(
                  imagePath: 'lib/images/meezy.jpg',
                  profileName: '#2',
                  details: '#babygirl',
                  onTap: () {},
                ),
              ),
              Card(
                color: tdDrawer,
                margin: const EdgeInsets.symmetric(
                  vertical: 1,
                  horizontal: 3,
                ),
                child: NotificationsListTile(
                  imagePath: 'lib/images/presec.jpg',
                  profileName: '#3',
                  details: '#Esther',
                  onTap: () {},
                ),
              ),
              Card(
                color: tdDrawer,
                margin: const EdgeInsets.symmetric(
                  vertical: 1,
                  horizontal: 3,
                ),
                child: NotificationsListTile(
                  imagePath: 'lib/images/wom.jpg',
                  profileName: '#4',
                  details: '#viralvideo',
                  onTap: () {},
                ),
              ),
              Card(
                color: tdDrawer,
                margin: const EdgeInsets.symmetric(
                  vertical: 1,
                  horizontal: 3,
                ),
                child: NotificationsListTile(
                  imagePath: 'lib/images/arnold.jpeg',
                  profileName: '#5',
                  details: 'Enokay',
                  onTap: () {},
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
