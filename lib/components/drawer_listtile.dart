import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class DrawerListTile extends StatelessWidget {
  final Function()? onTap;
  final IconData leadingIcon;
  final String title;

  const DrawerListTile({
    super.key,
    required this.onTap,
    required this.leadingIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leadingIcon,
        color: tdElevatedButton,
        size: 24,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: tdActionTexts,
          fontSize: 19,
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}
