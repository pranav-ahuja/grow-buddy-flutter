import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/Utility/drawer_icons.dart';
import 'package:growbuddy/screens/DrawerIcons/attendance.dart';
import 'package:growbuddy/screens/DrawerIcons/send_updates.dart';
import 'package:growbuddy/screens/DrawerIcons/fees_update.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    super.key,
    required this.fullName,
  });

  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      backgroundColor: kPrimaryColor1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: kPrimaryColor2,
            ),
            child: Text(
              fullName,
              style: TextStyle(
                color: kPrimaryColor1,
                fontSize: kDrawerNameSize,
                fontWeight: kTextWeight,
              ),
            ),
          ),
          DrawerItems(
            text: "Fees Sheet Download",
            icon: Icons.calendar_month,
            onTapRoute: () {},
          ),
          DrawerItems(
            text: "Attendance",
            icon: Icons.person,
            onTapRoute: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Attendance(),
                ),
              );
            },
          ),
          DrawerItems(
            text: "Send Updates",
            icon: Icons.update,
            onTapRoute: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SendUpdate(),
                ),
              );
            },
          ),
          DrawerItems(
            text: "Fees Update",
            icon: Icons.monetization_on,
            onTapRoute: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeeUpdate(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
