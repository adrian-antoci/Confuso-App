import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mystery_app/main.dart';
import 'package:mystery_app/screens/registration_screen.dart';
import 'package:mystery_app/screens/unskippable_screen.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("¿! Confuso App"), centerTitle: true),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 1, color: Colors.black),
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Spin around'),
              BottomNavigationBarItem(icon: Icon(Icons.add_sharp), label: 'Add 12'),
              BottomNavigationBarItem(icon: Icon(Icons.bug_report_outlined), label: 'AI'),
              BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Face'),
            ],
            currentIndex: 0,
            // selectedItemColor: Colors.amber[800],
            fixedColor: Colors.black,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            elevation: 0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 16,
        children: [
          SizedBox.shrink(),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 4),
            ),
            child: Column(
              spacing: 16,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Welcome to our app!\nGood luck figuring this shit out, our entire dev team is confused but we are sure you will find it easy to use.",
                ),
                SizedBox(
                  width: 150,
                  child: PrimaryButton(
                    text: 'Previous tip',
                    onTap: () => context.push(screen: UnskippableScreen()),
                    outlined: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
