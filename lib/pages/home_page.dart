import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:link_opp/components/drawer_listtile.dart';
import 'package:link_opp/constants/colors.dart';
import 'package:link_opp/pages/followers_following_page.dart';
import 'package:link_opp/pages/groups_page.dart';
import 'package:link_opp/pages/trending_page.dart';
import 'package:link_opp/screens/home_screen.dart';
import 'package:link_opp/screens/messages_screen.dart';
import 'package:link_opp/screens/notifications_screen.dart';
import 'package:link_opp/screens/search_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _signOut() async {
    FirebaseAuth.instance.signOut();
    try {
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException {
      Navigator.pop(context);
    }
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: tdBackground,
            title: const Text(
              'Sign out',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: tdElevatedButton,
              ),
            ),
            content: const Text(
              'Are you sure you want to sign out?',
              style: TextStyle(
                fontSize: 17,
                color: tdActionTexts,
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: _signOut,
                child: const Text(
                  'YES',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: tdElevatedButton,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'NO',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: tdActionTexts,
                  ),
                ),
              )
            ],
          );
        });
  }

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationsScreen(),
    const MessagesScreen(),
  ];

  void shareApp() {
    String message =
        'Check out this new social media app, LinkOpp, that is helping millions link up with the'
        ' rest of the world. Download it here ...';
    Share.share(message);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: tdBackground,
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: SweepGradient(
              startAngle: 2.8,
              endAngle: 4.5,
              center: Alignment.bottomRight,
              colors: [tdElevatedButton, tdBackground],
            ),
          ),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Image(
                    image: const AssetImage(
                      'lib/images/logo.png',
                    ),
                    height: height * 0.08,
                  ),
                ),
              ),
              DrawerListTile(
                onTap: () {},
                leadingIcon: Icons.person_3_outlined,
                title: 'Profile',
              ),
              DrawerListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    PageTransition(
                      child: const FollowersFollowing(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                leadingIcon: Icons.people_outline,
                title: 'Followers || Following',
              ),
              DrawerListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    PageTransition(
                      child: const GroupsPage(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                leadingIcon: Icons.groups_3_outlined,
                title: 'Groups',
              ),
              DrawerListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    PageTransition(
                      child: const TrendingPage(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                leadingIcon: Icons.whatshot_outlined,
                title: 'Trending',
              ),
              DrawerListTile(
                onTap: () {
                  Navigator.pop(context);
                  shareApp();
                },
                leadingIcon: Icons.share_outlined,
                title: 'Share App',
              ),
              DrawerListTile(
                onTap: () {},
                leadingIcon: Icons.settings_outlined,
                title: 'Settings',
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: tdElevatedButton,
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            );
          },
        ),
        title: const Text(
          'LinkOpp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: _showDialog,
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.045),
              child: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        color: tdElevatedButton,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.045,
            vertical: height * 0.01,
          ),
          child: GNav(
            selectedIndex: _selectedIndex,
            backgroundColor: tdElevatedButton,
            activeColor: Colors.white,
            color: Colors.white,
            gap: width * 0.02,
            tabBackgroundColor: Colors.grey.withAlpha(80),
            onTabChange: _navigateBottomBar,
            padding: EdgeInsets.all(height * 0.01),
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search_outlined,
                text: 'Search',
              ),
              GButton(
                icon: Icons.notifications_outlined,
                text: 'Notifications',
              ),
              GButton(
                icon: Icons.mail_outline_rounded,
                text: 'Messages',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
