class StoryScene {
  String currentScene;
  String imagePath;
  String text;
  String choice1;
  String choice2;
  String nextScene1;
  String nextScene2;

  StoryScene({
    required this.currentScene,
    required this.imagePath,
    required this.text,
    required this.choice1,
    required this.choice2,
    required this.nextScene1,
    required this.nextScene2,
  });
}

List<StoryScene> storyScenes = [
  StoryScene(
    currentScene: 'Apartment',
    imagePath: 'assets/images/Apartment.png',
    text:
        '''My name is Lily, and I never believed the scary stories about Windy Hill.
Every night, the old lighthouse shone across the dark sea. Beside it stood an abandoned house where, people said, strange things moved at night.
That evening, rain tapped against my window as I looked toward the hill.
The lighthouse beam swept across the darkness.
And for one second, I saw it.
A tall twisted shape moving beside the old house.
I froze.
Tom, I whispered.
My brother rushed to the window.
The light swept across the hill again.
The figure was gone.
Then Tom grabbed my arm.
Lily... look.
In the upstairs window of the old house, two golden eyes stared back at us.
A long scratching sound cut through the night.
Then came three slow knocks from somewhere outside our house.
Knock.
Knock.
Knock.
Toms face turned pale.
'What if it’s here?'
What should I do?''',
    choice1: 'Investigate outside',
    choice2: 'Watch the window',
    nextScene1: 'Parking Lot',
    nextScene2: 'Living Room',
  ),
];
