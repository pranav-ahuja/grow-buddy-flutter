import 'dart:convert';
import 'package:growbuddy/constant.dart';
import 'package:flutter/material.dart';
import 'package:growbuddy/Utility/register_textfield.dart';
import 'package:growbuddy/Utility/functions.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/screens/home_page.dart';
import 'package:http/http.dart' as http;

class RegisterAccount extends StatefulWidget {
  const RegisterAccount({super.key});

  @override
  State<RegisterAccount> createState() => _RegisterAccountState();
}

class _RegisterAccountState extends State<RegisterAccount> {
  String fullName = "";
  String token = "";

  final Map<String, dynamic> registerAccountDetails = {
    "firstName": "",
    "lastname": "",
    "email": "",
    "password": "",
    "reTryPassword": ""
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(kPrimaryColor1, kAppbarIconSize, "New User"),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RegisterTextField(
              hint: "Enter first name",
              label: "First Name",
              keyboardType: TextInputType.name,
              onChangeValue: (value) {
                setState(() {
                  registerAccountDetails["firstName"] = value;
                });
              },
            ),
            RegisterTextField(
              hint: "Enter last name",
              label: "Last Name",
              keyboardType: TextInputType.name,
              onChangeValue: (value) {
                setState(() {
                  registerAccountDetails["lastName"] = value;
                });
              },
            ),
            RegisterTextField(
              hint: "Enter emailId",
              label: "Email ID",
              keyboardType: TextInputType.emailAddress,
              onChangeValue: (value) {
                setState(() {
                  registerAccountDetails["email"] = value;
                });
              },
            ),
            RegisterTextField(
              hint: "Enter password",
              label: "Enter Password",
              obscurePw: true,
              keyboardType: TextInputType.text,
              onChangeValue: (value) {
                setState(() {
                  registerAccountDetails["password"] = value;
                });
              },
            ),
            RegisterTextField(
              hint: "Re Enter password",
              label: "Re-Enter Password",
              obscurePw: true,
              keyboardType: TextInputType.text,
              onChangeValue: (value) {
                setState(() {
                  registerAccountDetails["reTryPassword"] = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (registerAccountDetails["firstName"] == "" ||
                      registerAccountDetails["lastName"] == "" ||
                      registerAccountDetails["email"] == "" ||
                      registerAccountDetails["password"] == "" ||
                      registerAccountDetails["reTryPassword"] == "") {
                    showError(context, kEmptyRegisterFieldError);
                  } else {
                    fullName = (registerAccountDetails["firstName"] as String) +
                        (registerAccountDetails["lastName"] as String);

                    if (registerAccountDetails["password"] ==
                        registerAccountDetails["reTryPassword"]) {
                      kTokenValue =
                          registerAccountToBackend(registerAccountDetails)
                              as String;
                      if (kTokenValue != "False") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              name: fullName,
                            ),
                          ),
                        );
                      } else {
                        print(
                            "There is an error while connecting with backend");
                      }
                    } else {
                      showError(context, "Passwords doesn't match");
                    }
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor2),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
                  child: textOfApp(
                      0, "Register", kPrimaryColor1, kSubHeadingFontSize),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<String> registerAccountToBackend(var registerDetails) async {
  late http.Response result;
  var responseBody;
  final String authenticateURL =
      "http://192.168.0.157:8080/api/v1/authenticate";
  try {
    result = await http.post(Uri.parse(authenticateURL),
        body: jsonEncode(registerDetails),
        headers: {'Content-Type': 'application/json'});

    if (result.statusCode == 200) {
      print(result.body);
    }
  } catch (e) {
    print("ERROR - $e");
    return "False";
  }

  if (result.body != null) {
    responseBody = jsonDecode(result.body);
  }

  return responseBody["token"];
}
