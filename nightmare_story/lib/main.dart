import 'package:flutter/material.dart';
import 'package:nightmare_story/choice_button.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    currentScene,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    currentStoryScene.text,
                    style: TextStyle(color: Colors.grey[300], fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Image.asset(currentStoryScene.imagePath),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ChoiceButton(
                        text: currentStoryScene.choice1,
                        textColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            currentScene = currentStoryScene.nextScene1;
                          });
                        },
                        color: Colors.deepPurple,
                      ),
                      SizedBox(width: 10),
                      ChoiceButton(
                        text: currentStoryScene.choice2,
                        textColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            currentScene = currentStoryScene.nextScene2;
                          });
                        },
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
