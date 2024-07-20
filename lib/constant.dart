import 'dart:core';
import 'package:flutter/material.dart';

List<Color> gradientColor = [
  Color.fromARGB(255, 40, 54, 24),
  Color.fromARGB(255, 221, 161, 94)
];

var beginAlign = Alignment.centerLeft;
var endAlign = Alignment.centerRight;

const Color kPrimaryColor1 = Colors.white;
const Color kPrimaryColor2 = Color(0xff008353);
const Color kPrimaryColor2Transparent = Color(0x7f008353);
const double kHeadingFontSize = 50;
const double kDrawerNameSize = 45;
const double kLetterSpacing = 4.0;
const double kSubHeadingFontSize = 25.0;
const FontWeight kTextWeight = FontWeight.w900;
const double kButtonWidthHomePage = 320;
const double kAppbarIconSize = 40.0;
const double kIconSizeHomepage = 80;
const double kTextFieldPadding = 10.0;
const double kElevatedButtonPadding = 15.0;
const double kSearchBarPadding = 10.0;

const String kEmptyRegisterFieldError = "One or more fields are empty";

DateTime kPresentDate = DateTime.now();

late String kTokenValue;
