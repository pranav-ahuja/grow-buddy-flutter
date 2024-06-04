import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/Utility/functions.dart';

class PreNursery extends StatefulWidget {
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

  PreNursery(
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
  State<PreNursery> createState() => _PreNurseryState();
}

class _PreNurseryState extends State<PreNursery> {
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
      ),
    );
  }
}
