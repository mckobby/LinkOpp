import 'package:flutter/material.dart';

class NotificationsListTile extends StatelessWidget {
  final Function()? onTap;
  final String imagePath;
  final String profileName;
  final String details;

  const NotificationsListTile({
    super.key,
    required this.imagePath,
    required this.profileName,
    required this.details,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: height * 0.032,
      ),
      title: Text(
        profileName,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        details,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        maxLines: 3,
      ),
      trailing: const Icon(
        Icons.more_horiz_outlined,
        color: Colors.white,
        size: 18,
      ),
    );
  }
}
