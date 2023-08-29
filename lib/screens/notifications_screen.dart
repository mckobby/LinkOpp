import 'package:flutter/material.dart';
import 'package:link_opp/components/notifications_listtile.dart';
import 'package:link_opp/constants/colors.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBackground,
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
                  imagePath: 'lib/images/owass.jpg',
                  profileName: 'Nana Ama Vannesa',
                  details:
                      'invited you to join the private group PROMOTE YOUR BUSINESS.',
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
                  profileName: 'Sista Afia',
                  details: 'shared a reel: "#ShineYourEye this is cute".',
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
                  imagePath: 'lib/images/adeyemi.jpg',
                  profileName: 'Der MadKing',
                  details: 'shared a reel: "Tulenkey".',
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
                  profileName: 'Maame Sika Agyaponmaa',
                  details: 'mentioned you and other followers in a comment.',
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
                  imagePath: 'lib/images/brygo.jpeg',
                  profileName: 'Owusu Afriyie',
                  details: 'added 4 new photos',
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
                  imagePath: 'lib/images/mike.jpg',
                  profileName: 'Sandista Tei',
                  details: 'and 16 others had birthdays yesterday.',
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
                  imagePath: 'lib/images/mikee.jpg',
                  profileName: 'Maya Khan',
                  details: 'mentioned you and others in a comment.',
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
                  imagePath: 'lib/images/mikeee.jpg',
                  profileName: 'Senirman_Layla',
                  details: 'posted a new video: "Layla WASSCE".',
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
                  imagePath: 'lib/images/sark.jpg',
                  profileName: 'Appiah Francis',
                  details: 'mentioned you in a comment.',
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
                  profileName: 'Gyakie',
                  details: 'posted a new video: "German love at Hype Festival".',
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
