import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/Utility/functions.dart';
import 'package:growbuddy/screens/register_student.dart';
import 'package:growbuddy/Utility/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, this.name = "Shikha Ahuja"});

  String name;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavDrawer(
          fullName: widget.name,
        ),
        appBar: buildAppBar(kPrimaryColor1, kAppbarIconSize, "Grow Buddy"),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildElevatedButtons(context, "NURSERY"),
              buildElevatedButtons(context, "PLAY GROUP"),
              buildElevatedButtons(context, "PRE NURSERY"),
              buildElevatedButtons(context, "K.G."),
              buildElevatedButtons(context, "DAY CARE"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Registration()),
            );
          },
          elevation: 10.0,
          backgroundColor: kPrimaryColor1,
          foregroundColor: kPrimaryColor2,
          child: Icon(
            Icons.add,
            size: kAppbarIconSize,
          ),
          tooltip: "Add a student",
        ),
      ),
    );
  }
}
