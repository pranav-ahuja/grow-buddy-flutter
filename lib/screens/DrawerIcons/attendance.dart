import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:growbuddy/Utility/functions.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/Utility/calender.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  List<String> monthName = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "June",
    "July",
    "Aug",
    "Sept",
    "Oct",
    "Nov",
    "Dec"
  ];

  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(kPrimaryColor1, kAppbarIconSize, "Attendance"),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    CalenderAttendance(
                      onDateChange: (date) {
                        setState(() {
                          selectedDate = date;
                        });
                      },
                      initialDate: DateTime.now(),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    selectedDate.day.toString(),
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    monthName.elementAt(selectedDate.month - 1),
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
