import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/Utility/functions.dart';
import 'package:growbuddy/screens/login_screen.dart';

void main() {
  runApp(GrowBuddy());
  WidgetsFlutterBinding.ensureInitialized();
}

class GrowBuddy extends StatelessWidget {
  GrowBuddy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // drawer: NavDrawer(),
        appBar: buildAppBar(kPrimaryColor1, kAppbarIconSize, "GROW BUDDY"),
        body: LoginPage(), //Link to the Home page
      ),
    );
  }
}
