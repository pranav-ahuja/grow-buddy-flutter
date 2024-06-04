import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';

class NameCard extends StatelessWidget {
  final IconData image;
  final String name;
  final String rollNo;
  final onTap;

  const NameCard(
      {super.key,
      required this.image,
      required this.name,
      required this.rollNo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      borderOnForeground: true,
      // color: Colors.amber,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: kPrimaryColor1,
                child: Icon(
                  image,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    rollNo,
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
