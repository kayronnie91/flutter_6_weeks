import 'package:flutter/material.dart';

void main() {
  runApp(const StoryApp());
}

class StoryApp extends StatefulWidget {
  const StoryApp({super.key});

  @override
  State<StoryApp> createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  String currentScene = 'Nightmare Adventure';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(currentScene),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentScene = 'Hallway';
                    });
                  },
                  child: Text('Enter'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
