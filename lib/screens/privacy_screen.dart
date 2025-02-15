import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:mystery_app/main.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false), body: Text("PRIVACY"));
  }
}
