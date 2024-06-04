import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';

class DrawerItems extends StatelessWidget {
  final IconData icon;
  final String text;
  final onTapRoute;

  const DrawerItems({
    super.key,
    required this.icon,
    required this.text,
    required this.onTapRoute,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: kPrimaryColor2,
        size: 30.0,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      textColor: kPrimaryColor2,
      onTap: onTapRoute,
    );
  }
}
