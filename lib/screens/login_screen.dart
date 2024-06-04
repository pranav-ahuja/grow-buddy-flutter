import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/Utility/register_textfield.dart';
import 'package:growbuddy/Utility/functions.dart';
import 'package:growbuddy/screens/home_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String emailID = "", password = "";
  final String authenticateURL = "http://localhost:8080/api/v1/authenticate";
  final Map<String, dynamic> requestBody = {
    'email': 'pranav@gmail.com',
    'password': 'Password1',
  };

  Future<void> login() async {
    try {
      print("Before\n");
      final http.Response response = await http.post(Uri.parse(authenticateURL),
          body: jsonEncode(requestBody),
          headers: {'Content-Type': 'application/json'});
      print("After\n");

      if (response.statusCode == 200)
        print("Login Success\n");
      else {
        print("Login unsuccessfull\n");
      }
    } catch (e) {
      print("ERROR - $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.all(kTextFieldPadding),
        children: [
          Container(
            child: Image.asset(
              "assets/images/grow logo-Photoroom.png-Photoroom.png",
              height: 300,
              width: 300,
            ),
          ),
          RegisterTextField(
            hint: "Enter Email",
            label: "Email",
            keyboardType: TextInputType.emailAddress,
            onChangeValue: (value) {
              setState(() {
                emailID = value;
              });
            },
          ),
          RegisterTextField(
            hint: "Enter Password",
            label: "Password",
            keyboardType: TextInputType.visiblePassword,
            obscurePw: true,
            onChangeValue: (value) {
              setState(() {
                password = value;
              });
            },
          ),
          ElevatedButton(
            // onPressed: () async {
            //   print("here before\n");
            //   var response = await http.post(
            //     Uri.parse(authenticateURL),
            //     body: {"email": "pranav@gmail.com", "password": "Password1"},
            //   );
            //   print("here after\n");
            //   if (response.statusCode == 200) {
            //     print("Login Success");
            //   } else {
            //     print("Login Failed");
            //   }
            //   // Navigator.push(
            //   //     context, MaterialPageRoute(builder: (context) => HomePage()));
            //   print("The Email ID is: $emailID and password is: $password");
            // },
            // onPressed: login,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor2),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child:
                  textOfApp(0, "Submit", kPrimaryColor1, kSubHeadingFontSize),
            ),
          )
        ],
      ),
    );
  }
}
