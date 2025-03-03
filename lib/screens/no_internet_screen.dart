import 'package:flutter/material.dart';
import 'package:mystery_app/main.dart';
import 'package:mystery_app/screens/tutorial_screen.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Go Back (but to a different screen)", style: TextStyle(fontSize: 16)),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.push(screen: TutorialScreen()),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              children: [
                Text(":(", style: TextStyle(fontSize: 100)),
                Text("Ooooops", style: TextStyle(fontSize: 52)),
                Text("Check your internet connection and try again", textAlign: TextAlign.center),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8,
            children: [
              Text("You could try to:"),
              Text(
                "1. Waste your time checking your connection, won't help because our API is down the second time today.",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "2. Leave a bad review, we will ignore it and make ourselves feel better by saying how little time we had to build this app.",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "3. Use our website, it's not mobile responsive because we are still in the year 2000.",
                style: TextStyle(fontSize: 16),
              ),
              Text("4. Use a competitor's app and tell your friends about it.", style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
