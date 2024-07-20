import 'package:flutter/material.dart';
import 'package:growbuddy/Utility/functions.dart';
import 'package:growbuddy/Utility/register_textfield.dart';
import 'package:growbuddy/Utility/upload_student_image.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/screens/classes/nursery.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool isEmpty = false;

  String classGroup = "",
      name = "",
      motherName = "",
      motherContact = "",
      fatherName = "",
      fatherContact = "",
      emailID = "",
      guardianName = "",
      guardianContact = "",
      address = "";
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(kPrimaryColor1, kAppbarIconSize, "GROW BUDDY"),
      body: Center(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(kTextFieldPadding),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageUploadButton(),
            RegisterTextField(
              label: "Name",
              hint: "Enter Name",
              keyboardType: TextInputType.name,
              obscurePw: false,
              onChangeValue: (value) {
                // setState(() {
                if (value == "") {
                  isEmpty = true;
                } else {
                  name = value;
                }
                // });
              },
            ),
            RegisterTextField(
              label: "Age",
              hint: "Enter Age",
              keyboardType: TextInputType.number,
              obscurePw: false,
              onChangeValue: (value) {
                setState(() {
                  if (value == "") {
                    isEmpty = true;
                  } else {
                    age = int.parse(value);
                  }
                });
              },
            ),
            RegisterTextField(
              label: "Class Group",
              hint: "Enter Class Group",
              keyboardType: TextInputType.text,
              obscurePw: false,
              onChangeValue: (value) {
                setState(() {
                  if (value == "") {
                    isEmpty = true;
                  } else {
                    classGroup = value;
                  }
                });
              },
            ),
            RegisterTextField(
              label: "Mother's Name",
              hint: "Enter Mother's Name",
              keyboardType: TextInputType.name,
              obscurePw: false,
              onChangeValue: (value) {
                setState(() {
                  if (value == "") {
                    isEmpty = true;
                  } else
                    motherName = value;
                });
              },
            ),
            RegisterTextField(
              label: "Mother's Contact",
              hint: "Enter Mother's Contact Number",
              keyboardType: TextInputType.number,
              obscurePw: false,
              onChangeValue: (value) {
                setState(() {
                  if (value == "") {
                    isEmpty = true;
                  } else
                    motherContact = value;
                });
              },
            ),
            RegisterTextField(
              label: "Father's Name",
              hint: "Enter Father's Name",
              keyboardType: TextInputType.name,
              obscurePw: false,
              onChangeValue: (value) {
                setState(() {
                  if (value == "") {
                    isEmpty = true;
                  } else
                    fatherName = value;
                });
              },
            ),
            RegisterTextField(
              label: "Father's Contact",
              hint: "Enter Father's Contact Number",
              keyboardType: TextInputType.number,
              onChangeValue: (value) {
                setState(() {
                  if (value == "") {
                    isEmpty = true;
                  } else
                    fatherContact = value;
                });
              },
            ),
            RegisterTextField(
              label: "Email ID",
              hint: "Enter Email ID",
              keyboardType: TextInputType.emailAddress,
              obscurePw: false,
              onChangeValue: (value) {
                setState(() {
                  if (value == "") {
                    isEmpty = true;
                  } else
                    emailID = value;
                });
              },
            ),
            RegisterTextField(
              hint: "Enter Guardian's Name",
              label: "Guardian's Name",
              keyboardType: TextInputType.name,
              onChangeValue: (value) {
                if (value == "") {
                  isEmpty = true;
                } else
                  guardianName = value;
              },
            ),
            RegisterTextField(
              hint: "Enter Guardian's Contact Number",
              label: "Guardian's Contact Number",
              keyboardType: TextInputType.number,
              onChangeValue: (value) {
                if (value == "") {
                  isEmpty = true;
                } else
                  guardianContact = value;
              },
            ),
            RegisterTextField(
              hint: "Enter Complete Address",
              label: "Address",
              keyboardType: TextInputType.streetAddress,
              onChangeValue: (value) {
                if (value == "") {
                  isEmpty = true;
                } else
                  address = value;
              },
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              child: ElevatedButton(
                onPressed: () {
                  print(isEmpty);
                  if (name == "" ||
                      age == 0 ||
                      motherName == "" ||
                      motherContact == "" ||
                      fatherName == "" ||
                      fatherContact == "" ||
                      classGroup == "" ||
                      emailID == "" ||
                      guardianName == "" ||
                      guardianContact == "" ||
                      address == "") {
                    showError(context, kEmptyRegisterFieldError);
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Nursery(
                          classHead: classGroup,
                          name: name,
                          age: age,
                          motherName: motherName,
                          motherContact: motherContact,
                          fatherName: fatherName,
                          fatherContact: fatherContact,
                          guardianName: guardianName,
                          guardianContact: guardianContact,
                          address: address,
                          emailID: emailID,
                        ),
                      ),
                    );
                  }
                },
                child:
                    textOfApp(0, "Submit", kPrimaryColor1, kSubHeadingFontSize),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor2,
                  padding: EdgeInsets.all(kElevatedButtonPadding),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
