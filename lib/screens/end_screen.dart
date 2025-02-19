import 'package:flutter/material.dart';
import 'package:mystery_app/main.dart';
import 'package:mystery_app/screens/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          AppLogo(),
          Text("The end", textAlign: TextAlign.center),
          SizedBox(height: 30),
          Text("work in progress!"),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
