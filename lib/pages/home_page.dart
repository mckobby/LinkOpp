import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:link_opp/components/drawer_listtile.dart';
import 'package:link_opp/constants/colors.dart';
import 'package:link_opp/screens/home_screen.dart';

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

  final List<Widget> _pages = [
    const Home(),
    const Center(
      child: Text(
        'a winner',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    ),
    const Center(
      child: Text(
        'already',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    ),
    const Center(
      child: Text(
        'God',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    )
  ];

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
                onTap: () {},
                leadingIcon: Icons.people_outline,
                title: 'Followers || Following',
              ),
              DrawerListTile(
                onTap: () {},
                leadingIcon: Icons.groups_3_outlined,
                title: 'Groups',
              ),
              DrawerListTile(
                onTap: () {},
                leadingIcon: Icons.whatshot_outlined,
                title: 'Trending',
              ),
              DrawerListTile(
                onTap: () {},
                leadingIcon: Icons.share_outlined,
                title: 'Share App',
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: tdElevatedButton,
        leading: Builder(
          builder: (context) {
            return GestureDetector(
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
          GestureDetector(
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
      body: _pages[_selectedIndex],
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
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'Prompts',
              ),
              GButton(
                icon: Icons.mail_rounded,
                text: 'Messages',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
