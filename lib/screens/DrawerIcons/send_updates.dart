import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:growbuddy/Utility/functions.dart';
import 'package:growbuddy/constant.dart';

class SendUpdate extends StatefulWidget {
  const SendUpdate({super.key});

  @override
  State<SendUpdate> createState() => _SendUpdateState();
}

enum OptionsToSelect { all, selection }

class _SendUpdateState extends State<SendUpdate> {
  OptionsToSelect? _character = OptionsToSelect.all;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(kPrimaryColor1, kAppbarIconSize, "Send Updates"),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Message",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25.0,
                  color: kPrimaryColor2,
                ),
              ),
              TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  hintText: "Enter your message here...",
                ),
                keyboardType: TextInputType.text,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildRadioButtonSendUpdates("All", OptionsToSelect.all),
                  buildRadioButtonSendUpdates(
                      "Select the parents", OptionsToSelect.selection),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor1,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor2),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildRadioButtonSendUpdates(
      String textToDisplay, OptionsToSelect val) {
    return ListTile(
      title: Text(
        textToDisplay,
        style: TextStyle(
          color: kPrimaryColor2,
          fontSize: 25.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      leading: Radio<OptionsToSelect>(
        value: val,
        groupValue: _character,
        onChanged: (OptionsToSelect? value) {
          setState(() {
            _character = value;
            if (_character == OptionsToSelect.selection) {
              print("In the selection screen");
            }
          });
        },
        activeColor: kPrimaryColor2,
      ),
    );
  }
}
