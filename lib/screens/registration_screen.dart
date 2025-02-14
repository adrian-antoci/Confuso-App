import 'package:flutter/material.dart';
import 'package:mystery_app/main.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _errorDisplayed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("* Form validation might work depending on your luck.", style: TextStyle(fontSize: 14)),
          PrimaryButton(
            text: 'Submit but don\'t show loading bar',
            onTap: () {
              if (!_errorDisplayed) {
                setState(() {
                  _errorDisplayed = true;
                });
              }
            },
            outlined: true,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 16,
        children: [
          SizedBox(height: 16),
          Text("About you", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900), textAlign: TextAlign.center),
          Text(
            "We don't really need all this data.\nWhen our app eventually gets hacked and your identity stolen we will send you our sincere apologies.",
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Enter your first name (not required)",
              fillColor: Colors.white70,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Enter your last name (not optional)",
              fillColor: Colors.white70,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.cake),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Imagine your date of birth",
              fillColor: Colors.white70,
            ),
          ),
          if (_errorDisplayed)
            Text(
              "To proceed please imagine your date of birth (e.g. was it a sunny or rainy day?) then try again.",
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),
        ],
      ),
    );
  }
}
