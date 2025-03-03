import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mystery_app/main.dart';
import 'package:mystery_app/screens/registration_screen.dart';
import 'package:mystery_app/screens/tutorial_screen.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _toggle1 = true;
  bool _toggle2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Websites use cookies, apps use biscuits", style: TextStyle(fontSize: 18)),
              CupertinoSwitch(
                value: _toggle2,
                onChanged: (value) {
                  setState(() {
                    _toggle2 = value;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Record my conversations in background", style: TextStyle(fontSize: 18)),
              CupertinoSwitch(
                value: _toggle1,
                onChanged: (value) {
                  setState(() {
                    _toggle1 = value;
                  });
                },
              ),
            ],
          ),
          PrimaryButton(
            text: 'Accept 1,345 trackers and 1 virus',
            onTap: () {
              if (_toggle1 && _toggle2) {
                context.push(screen: RegistrationScreen());
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          AppLogo(logoOnly: true),
          Text("We care about your privacy", textAlign: TextAlign.center, style: TextStyle(fontSize: 32)),
          Text(
            "In reality we will track you regardless of your choice because we are convinced users don’t know what they want.",
            textAlign: TextAlign.center,
          ),
          Text(
            "...and there is virtually no way you can check what happens behind the scenes...so trust us?",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
