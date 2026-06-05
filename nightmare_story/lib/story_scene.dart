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

  StoryScene(
    currentScene: 'Parking Lot',
    imagePath: 'assets/images/ParkingLot.png',
    text: '''Lily grabbed a flashlight and slipped outside.

The rain had stopped, but the air felt strangely cold.

The parking lot beside the apartment building was empty.

Almost empty.

Near the far fence stood a dark figure.

Too tall.
Too thin.

It wasn't moving.

Lily shined her flashlight toward it.

The beam flickered.

For a moment the figure vanished.

Then the light steadied.

The figure was closer.

Much closer.

A metallic scraping sound echoed from behind a parked car.

Something was there.

Watching.

What should I do?''',
    choice1: 'Check out the car',
    choice2: 'Run toward figure',
    nextScene1: 'Parked Car',
    nextScene2: 'Shadow Figure',
  ),

  StoryScene(
    currentScene: 'Living Room',
    imagePath: 'assets/images/LivingRoom.png',
    text: '''Tom wouldn't stop staring at the window.

The golden eyes were still there.

Watching.

Unblinking.

Lily forced herself to look away and stepped into the living room.

The house felt wrong.

Too quiet.

Even the rain outside had stopped.

A cold draft drifted through the room.

Tom frowned.

'Did you leave the back door open?'

Lily shook her head.

Then they both heard it.

Creak.

A slow wooden creak from the hallway.

Creak.

Another step.

Something was inside the house.

The lights flickered.

For a split second the room went dark.

When the lights returned, a muddy footprint stood in the middle of the floor.

Neither of them had moved.

Tom pointed toward the hallway.

'Lily... there's another one.'

A second footprint appeared.

Then a third.

Slowly moving toward them.

From the darkness at the end of the hallway came a faint whisper.

'Come find me...'

What should I do?''',
    choice1: 'Follow footprints',
    choice2: 'Lock the Door',
    nextScene1: 'Hallway',
    nextScene2: 'Front Door',
  ),

  StoryScene(
    currentScene: 'Hallway',
    imagePath: 'assets/images/Hallway.png',
    text: '''Lily followed the muddy footprints into the hallway.

The whisper grew louder.

'Come find me...'

The footprints ended at a closed bedroom door.

Then the doorknob slowly began to turn.''',
    choice1: 'Open Door',
    choice2: 'Run to Tom',
    nextScene1: 'Bedroom',
    nextScene2: 'Living Room Return',
  ),
  StoryScene(
    currentScene: 'Parked Car',
    imagePath: 'assets/images/ParkedCar.png',
    text: '''Lily forced herself toward the parked car.

The metallic scraping sound stopped.

Silence.

Her flashlight trembled in her hand as she stepped closer.

The windows were covered in fog.

Something moved inside.

A shape.

Too quick to see clearly.

Lily wiped the driver's side window.

The seat was empty.

Then she noticed the trunk.

It was slightly open.

Just a few inches.

A foul smell drifted out.

Rotting.

Something wet dripped onto the pavement below.

Drip.

Drip.

Drip.

The trunk slowly creaked open another inch by itself.

Then Lily heard breathing.

Not behind her.

Not beside her.

Inside the trunk.

What should I do?''',
    choice1: 'Open trunk',
    choice2: 'Back away',
    nextScene1: 'Trunk',
    nextScene2: 'Parking Lot Retreat',
  ),

  StoryScene(
    currentScene: 'Shadow Figure',
    imagePath: 'assets/images/ShadowFigure.png',
    text: '''Lily ran toward the figure.

The flashlight beam bounced wildly as she crossed the parking lot.

The figure didn't move.

It simply stood there.

Waiting.

As Lily got closer, she realized something was wrong.

The shape wasn't a person.

Its arms were too long.

Its head tilted at an impossible angle.

The creature slowly turned toward her.

Two golden eyes glowed in the darkness.

'Lily,' it whispered.

Her blood froze.

It knew her name.

Then the creature pointed toward the old lighthouse on Windy Hill.

A low growl echoed behind her.

Something else was moving between the parked cars.

The creature took a step back and pointed again.

Toward the lighthouse.

What should I do?''',
    choice1: 'Follow Creature',
    choice2: 'Hide',
    nextScene1: 'Lighthouse Path',
    nextScene2: 'Parked Cars',
  ),
  StoryScene(
    currentScene: 'Lighthouse Path',
    imagePath: 'assets/images/LighthousePath.png',
    text: '''The creature turned and began walking toward Windy Hill.

Lily hesitated.

Every instinct told her to run.

But the creature had spoken her name.

And it seemed to know something.

The golden eyes drifted through the darkness ahead of her.

Always just far enough away.

The path climbed steeply toward the lighthouse.

The wind howled through the trees.

Branches scraped against one another like skeletal fingers.

Halfway up the hill, Lily noticed old wooden signs along the trail.

Most had fallen over.

One remained standing.

Its faded paint read:

DANGER
KEEP AWAY

Someone had scratched a second message underneath.

IT WAKES WHEN THE LIGHT SHINES

A sudden scream echoed from somewhere near the lighthouse.

Not an animal.

Human.

The creature stopped and pointed toward two different paths.

One led through the forest.

The other climbed directly toward the lighthouse.

What should I do?''',
    choice1: 'Follow Path',
    choice2: 'Climb to Lighthouse',
    nextScene1: 'Forest Path',
    nextScene2: 'Lighthouse Entrance',
  ),
  StoryScene(
    currentScene: 'Forest Path',
    imagePath: 'assets/images/ForestPath.png',
    text: '''Lily stepped onto the narrow forest trail.

The shadow creature remained behind.

Watching.

The trees quickly swallowed the lighthouse light.

Darkness closed around her.

The path twisted between ancient pines.

The air smelled of wet earth and salt from the sea.

Then she noticed something hanging from a branch.

A doll.

Old.

Rotting.

Its glass eyes reflected her flashlight.

A second doll hung farther ahead.

Then a third.

Someone had placed them along the trail.

Leading deeper into the forest.

A sudden crack echoed behind her.

Lily spun around.

Nothing.

But when she turned back, the nearest doll was gone.

Her heart pounded.

Ahead, the path split in two.

One route led toward a strange glow between the trees.

The other descended into a dark ravine where water could be heard rushing below.

What should I do?''',
    choice1: 'Follow Glow',
    choice2: 'Climb Ravine',
    nextScene1: 'Forest Clearing',
    nextScene2: 'Ravine',
  ),
];
