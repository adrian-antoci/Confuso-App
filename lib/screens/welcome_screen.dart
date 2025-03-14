import 'package:flutter/material.dart';
import 'package:mystery_app/main.dart';
import 'package:mystery_app/screens/privacy_screen.dart';
import 'package:mystery_app/screens/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryButton(text: 'Cancel', onTap: () => context.push(screen: PrivacyScreen())),
          PrimaryButton(text: 'Why', outlined: true, onTap: () => context.push(screen: PrivacyScreen())),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          AppLogo(),
          Text("Who says apps have to make sense?\nWhat is an app anyway?", textAlign: TextAlign.center),
          SizedBox(height: 30),
          Text("Confusooo!"),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
