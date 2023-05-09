import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class NavTile extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final IconData icon;

  const NavTile({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      dense: true,
      minLeadingWidth: 25,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      leading: Icon(icon, color: CustomColor.profileIconColor, size: 20),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: CustomColor.titleColor,
          height: 1.4,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: CustomColor.profileIconColor,
        size: 12,
      ),
    );
  }
}
