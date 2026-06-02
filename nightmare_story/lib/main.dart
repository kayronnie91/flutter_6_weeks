import 'package:flutter/material.dart';
import 'story_scene.dart';

void main() {
  runApp(const StoryApp());
}

class StoryApp extends StatefulWidget {
  const StoryApp({super.key});

  @override
  State<StoryApp> createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  String currentScene = 'Apartment';
  @override
  Widget build(BuildContext context) {
    final currentStoryScene = storyScenes.firstWhere(
      (story) => story.currentScene == currentScene,
    );
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
                Image.asset(currentStoryScene.imagePath),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentScene = 'Apartment';
                        });
                      },
                      child: Text('Enter'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentScene = 'Apartment';
                        });
                      },
                      child: Text('Enter'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
