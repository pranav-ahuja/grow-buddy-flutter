import 'package:flutter/material.dart';
import 'package:growbuddy/constant.dart';
import 'package:growbuddy/screens/classes/nursery.dart';
import 'package:growbuddy/screens/classes/day_care.dart';
import 'package:growbuddy/screens/classes/kg.dart';
import 'package:growbuddy/screens/classes/play_group.dart';
import 'package:growbuddy/screens/classes/pre_nursery.dart';

//Functions that are used by all the pages

//1) Function to check if the text is normal or gradient. And on the basis of this, the data is created
Widget textOfApp(
    int textType, String textToDisplay, Color textColor, double fontSize) {
  // if(textType == 0)
  // {
  //   return Text(
  //     textToDisplay,
  //     style: TextStyle(
  //       fontSize: fontSize,
  //       color: textColor,
  //       fontWeight: textWeight,
  //       letterSpacing: letterSpacing,
  //     ),
  //   );
  // }

  return Text(
    textToDisplay,
    style: TextStyle(
      fontSize: fontSize,
      color: textColor,
      fontWeight: kTextWeight,
      letterSpacing: kLetterSpacing,
    ),
  );

  // else
  // {
  //   return GradientText(
  //     textToDisplay,
  //     colors: gradientColor,
  //     gradientType: GradientType.linear,
  //     gradientDirection: GradientDirection.ttb,
  //     style: const TextStyle(
  //       fontWeight: textWeight,
  //       fontSize: headingFontSize,
  //       letterSpacing: letterSpacing,
  //     ),
  //   );
  // }
}

//2) The functions that is use to create elevated button
Widget buildElevatedButtons(var context, String buttonText) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: ElevatedButton(
      onPressed: () {
        //Nursery
        if (buttonText.toLowerCase() == "nursery") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Nursery(classHead: buttonText)));
        }
        //KG
        else if (buttonText.toLowerCase() == "k.g.") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => KG(classHead: buttonText)));
        }
        //Play Group
        else if (buttonText.toLowerCase() == "play group") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlayGroup(classHead: buttonText)));
        }
        //Pre nursery
        else if (buttonText.toLowerCase() == "pre nursery") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PreNursery(classHead: buttonText)));
        }
        //Day Care
        else if (buttonText.toLowerCase() == "day care") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DayCare(classHead: buttonText)));
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kPrimaryColor2),
        fixedSize: MaterialStateProperty.all(Size(300.0, 70.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kElevatedButtonPadding,
            vertical: kElevatedButtonPadding),
        child: textOfApp(0, buttonText, kPrimaryColor1, kSubHeadingFontSize),
      ),
    ),
  );
}

//3) The function that is used to create the custom appbar
AppBar buildAppBar(Color iconsColor, double iconSize, String appBarText) {
  return AppBar(
    iconTheme: IconThemeData(
      color: iconsColor,
      size: iconSize,
    ),
    title: textOfApp(0, appBarText, kPrimaryColor1, 30.0),
    centerTitle: true,
    flexibleSpace: Container(
      color: kPrimaryColor2,
    ),
  );
}
