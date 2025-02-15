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
    Future.delayed(Duration(seconds: 55), () => context.push(screen: WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Marquee(
        numberOfRounds: 1,
        onDone: () => context.push(screen: PrivacyScreen()),
        startPadding: 0,
        velocity: 35,
        text:
            "                                                                                                                      This is not a bug. We didn't put a loading bar because we thought in real life YOUR CONNECTION IS ALWAYS 4G OR WIFI 6. That 150ms API call is now taking 10 seconds :) Next screen could appear any moment now...",
      ),
    );
  }
}
