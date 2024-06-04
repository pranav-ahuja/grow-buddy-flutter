import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/Utility/functions.dart';
import 'package:growbuddy/Utility/name_card.dart';

class Nursery extends StatefulWidget {
  final String classHead;
  String? name,
      motherName,
      motherContact,
      fatherName,
      fatherContact,
      guardianName,
      guardianContact,
      address,
      emailID;
  int? age;

  Nursery(
      {super.key,
      required this.classHead,
      this.name = "Prisha Mallik",
      this.age = 0,
      this.motherName = "",
      this.motherContact = "",
      this.fatherName = "",
      this.fatherContact = "",
      this.guardianName = "",
      this.guardianContact = "",
      this.address = "",
      this.emailID = ""});

  @override
  State<Nursery> createState() => _NurseryState();
}

class _NurseryState extends State<Nursery> {
  late String classHead;
  String? name,
      motherName,
      motherContact,
      fatherName,
      fatherContact,
      guardianName,
      guardianContact,
      address,
      emailID;
  int? age;

  @override
  void initState() {
    super.initState();
    classHead = widget.classHead;
    name = widget.name;
    motherName = widget.motherName;
    motherContact = widget.motherContact;
    fatherName = widget.fatherName;
    fatherContact = widget.fatherContact;
    guardianName = widget.guardianName;
    guardianContact = widget.guardianContact;
    address = widget.address;
    emailID = widget.emailID;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(kPrimaryColor1, kAppbarIconSize, classHead),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: SearchBar(
                    elevation: MaterialStateProperty.all(2.0),
                    leading: Icon(
                      Icons.search_rounded,
                      color: kPrimaryColor2,
                    ),
                    trailing: [
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: kPrimaryColor2,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: ListView(
                    children: [
                      NameCard(
                        name: name!,
                        rollNo: "24GB01",
                        image: Icons.person,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              backgroundColor: kPrimaryColor1,
                              elevation: 2.0,
                              title: Text(
                                name!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              insetPadding: EdgeInsets.zero,
                              content: Container(
                                // constraints: BoxConstraints(maxWidth: 150.0),
                                child: Column(
                                  children: [
                                    StudentDetailAlertDialogue(
                                      field_label: "Roll No.",
                                      field_value: "24GB01",
                                    ),
                                    StudentDetailAlertDialogue(
                                        field_label: "Mother's name",
                                        field_value: motherName!),
                                    StudentDetailAlertDialogue(
                                        field_label: "Mother's Contact",
                                        field_value: motherContact!),
                                    StudentDetailAlertDialogue(
                                        field_label: "Father's Name",
                                        field_value: fatherName!),
                                    StudentDetailAlertDialogue(
                                        field_label: "Father's Contact",
                                        field_value: fatherContact!),
                                    StudentDetailAlertDialogue(
                                        field_label: "Email ID",
                                        field_value: emailID!),
                                    StudentDetailAlertDialogue(
                                        field_label: "Guardian's Name",
                                        field_value: guardianName!),
                                    StudentDetailAlertDialogue(
                                        field_label: "Guardian's Contact",
                                        field_value: guardianContact!),
                                    StudentDetailAlertDialogue(
                                        field_label: "Address",
                                        field_value: address!),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StudentDetailAlertDialogue extends StatelessWidget {
  const StudentDetailAlertDialogue({
    super.key,
    required this.field_label,
    required this.field_value,
  });

  final String field_label, field_value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 70.0),
            child: Text(
              field_label + " - ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 150.0),
            child: Text(field_value),
          ),
        ],
      ),
    );
  }
}
