import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:mystery_app/main.dart';
import 'package:mystery_app/screens/privacy_screen.dart';
import 'package:mystery_app/screens/welcome_screen.dart';

class SlowApiScreen extends StatefulWidget {
  const SlowApiScreen({super.key});

  @override
  State<SlowApiScreen> createState() => _SlowApiScreenState();
}

class _SlowApiScreenState extends State<SlowApiScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 45), () => context.push(screen: PrivacyScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Marquee(
        numberOfRounds: 1,
        onDone: () => context.push(screen: PrivacyScreen()),
        startPadding: 0,
        velocity: 40,
        text:
            "                                                                                           This is not a bug! We didn't put a loading bar because we didn't think you'll be using the app while passing through tunnels. That 250ms API call now takes 10 seconds :) Next screen could appear any moment now...",
      ),
    );
  }
}
