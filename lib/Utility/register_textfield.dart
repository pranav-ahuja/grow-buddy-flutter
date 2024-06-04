import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';

class RegisterTextField extends StatelessWidget {
  RegisterTextField({
    super.key,
    required this.hint,
    required this.label,
    required this.keyboardType,
    this.obscurePw = false,
    required this.onChangeValue,
  });

  final String label, hint;
  final TextInputType keyboardType;
  bool obscurePw;
  late void Function(String) onChangeValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          labelText: label,
          hintText: hint,
        ),
        onChanged: onChangeValue,
        obscureText: obscurePw,
        keyboardType: keyboardType,
        style: TextStyle(
          color: kPrimaryColor2,
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
