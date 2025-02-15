import 'package:flutter/material.dart';
import 'package:mystery_app/main.dart';
import 'package:mystery_app/screens/slow_api_screen.dart';

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
          onPressed: () => context.push(screen: SlowApiScreen()),
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
                Text("It's not you, it's us"),
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
                "1. Waste your time checking the internet connection, 90% of the time is our SOAP API timing out randomly.",
                style: TextStyle(fontSize: 14),
              ),
              Text(
                "2. Leave a bad review, we will ignore it and make ourselves feel better by saying how little time we had to build this app.",
                style: TextStyle(fontSize: 14),
              ),
              Text(
                "3. Use our website, it's not mobile responsive because we are still in the year 2000.",
                style: TextStyle(fontSize: 14),
              ),
              Text("4. Use a competitor's app and tell your friends about it.", style: TextStyle(fontSize: 14)),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
