import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mystery_app/main.dart';
import 'package:mystery_app/screens/end_screen.dart';
import 'package:mystery_app/screens/tutorial_screen.dart';

class UnskippableScreen extends StatefulWidget {
  const UnskippableScreen({super.key});

  @override
  State<UnskippableScreen> createState() => _UnskippableScreenState();
}

class _UnskippableScreenState extends State<UnskippableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black, width: 3),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.info_outline),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Did you know?", style: TextStyle(height: 1)),
                  Text(
                    "The score is tied to our CTO getting his bonus and he really needs that money this quarter.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Text("BANG!", textAlign: TextAlign.center, style: TextStyle(fontSize: 70, height: 1)),
          Text(
            "We stopped you from doing something important in the app because our next question is critical.",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100),
          Text("From 1 to 5 how likely are you to recommend this app to a friend?", style: TextStyle(fontSize: 18)),
          SegmentedButton<int>(
            segments: const <ButtonSegment<int>>[
              ButtonSegment<int>(value: 1, label: Text('1')),
              ButtonSegment<int>(value: 2, label: Text('2')),
              ButtonSegment<int>(value: 3, label: Text('3')),
              ButtonSegment<int>(value: 4, label: Text('4')),
              ButtonSegment<int>(value: 5, label: Text('5')),
            ],
            selected: <int>{0},
            onSelectionChanged: (p0) {
              context.push(screen: WelcomeScreen());
            },
          ),
        ],
      ),
    );
  }
}
