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
  StoryScene(
    currentScene: 'Forest Clearing',
    imagePath: 'assets/images/ForestClearing.png',
    text: '''The strange glow led Lily into a small clearing.

The trees ended abruptly.

In the center stood a circle of ancient stones.

A pale blue light floated above them.

The air hummed.

As Lily stepped closer, she saw something inside the circle.

A photograph.

Her photograph.

Taken yesterday.

On the back someone had written:

THE LIGHTHOUSE REMEMBERS.

The ground trembled.

The blue light suddenly shot toward the lighthouse.

For a moment Lily saw hundreds of shadowy figures standing between the trees.

Watching.

Waiting.

Then they vanished.

Only one path remained.

The path to the lighthouse.

What should I do?''',
    choice1: 'Go to Lighthouse',
    choice2: 'Run to town',
    nextScene1: 'Lighthouse',
    nextScene2: 'Town Escape',
  ),
  StoryScene(
    currentScene: 'Lighthouse',
    imagePath: 'assets/images/Lighthouse.png',
    text: '''The lighthouse door stood open.

The beam above swept across the stormy sea.

Inside, dust covered everything.

The place looked abandoned.

Yet someone had recently lit candles along the spiral staircase.

At the center of the room stood an old journal.

Lily opened it.

Every page contained the same warning.

DO NOT LET THE LIGHT REACH THE SEA.

Again and again.

Hundreds of times.

Then she reached the final page.

The handwriting changed.

If you are reading this, it already knows your name.

A deafening horn echoed outside.

The lighthouse beam suddenly brightened.

Far below, something enormous moved beneath the waves.

The entire tower trembled.

A control panel beside the lamp began flashing.

Lily realized she had only seconds.

What should I do?''',
    choice1: 'Turn Off Lighthouse',
    choice2: 'Leave Light On',
    nextScene1: 'Final Choice',
    nextScene2: 'Awakening',
  ),
  StoryScene(
    currentScene: 'Final Choice',
    imagePath: 'assets/images/FinalChoice.png',
    text: '''Lily rushed to the control panel.

The lighthouse shook violently.

Outside, the sea churned beneath the cliffs.

Something enormous was rising.

The shadow creature appeared in the doorway.

For the first time, it spoke clearly.

'The light calls it.'

The beam swept across the water.

Far below, a massive golden eye opened beneath the waves.

The creature stepped beside Lily.

'I was never your enemy.'

The control panel flashed red.

EMERGENCY OVERRIDE

The mechanism could only do one thing before it burned out.

Either the lighthouse would go dark forever.

Or the beam would become brighter than ever.

The tower groaned.

Glass shattered above.

The sea creature began climbing toward the cliffs.

This was the final decision.

What should I do?''',
    choice1: 'Turn it Off!',
    choice2: 'Aplify Light',
    nextScene1: 'Ending Light Extinguished',
    nextScene2: 'Ending Awakening',
  ),
  StoryScene(
    currentScene: 'Ending Light Extinguished',
    imagePath: 'assets/images/EndingLightExtinguished.png',
    text: '''Lily pulled the emergency lever.

The lighthouse beam flickered.

Once.

Twice.

Then darkness swallowed the tower.

Outside, the sea creature let out a deep roar.

The sound shook the cliffs.

For a terrifying moment, nothing happened.

Then the enormous golden eye beneath the waves slowly closed.

The ocean grew calm.

The storm vanished.

Moonlight broke through the clouds.

The shadow creature stood beside the doorway.

Its glowing eyes faded.

'Thank you,' it whispered.

Its body dissolved into drifting black mist.

By morning, the lighthouse stood silent.

The old journal had vanished.

The strange footprints were gone.

No one in town believed Lily's story.

Not even Tom.

But sometimes, on quiet nights, she would climb Windy Hill and stare across the sea.

The light never shone again.

And nothing ever answered from the darkness below.

THE END

Good Ending
Keeper of the Light''',
    choice1: 'Play Again',
    choice2: '',
    nextScene1: 'Apartment',
    nextScene2: '',
  ),
  StoryScene(
    currentScene: 'Ending Awakening',
    imagePath: 'assets/images/EndingAwakening.png',
    text: '''Lily slammed the override forward.

The lighthouse beam exploded with light.

Brighter than ever before.

The entire ocean turned gold.

For one terrible second, the sea became perfectly still.

Then something answered.

A roar echoed across the water.

Not from above.

From below.

The ocean erupted.

A colossal shape rose from the depths.

Its single golden eye opened fully.

The cliffs shattered beneath its weight.

The shadow creature screamed.

'NO!'

But it was too late.

The lighthouse had called it.

The beam locked onto the creature's eye.

The sky darkened.

Stars vanished.

One by one, every light in the town below went out.

Lily watched in horror as the thing climbed from the sea.

Far below, people began to run.

Car alarms echoed through the streets.

The creature turned its gaze toward the town.

Toward the world.

The lighthouse beam continued to shine.

And somewhere in the darkness beyond the horizon...

Other eyes opened.

THE END

Bad Ending

The Awakening''',
    choice1: 'Play Again',
    choice2: '',
    nextScene1: 'Apartment',
    nextScene2: '',
  ),

  // Right side choice branch//
  StoryScene(
    currentScene: 'Bedroom',
    imagePath: 'assets/images/Bedroom.png',
    text: '''Lily pushed the bedroom door open.

The room was empty.

Moonlight spilled through dusty curtains.

At first, nothing seemed unusual.

Then she noticed the walls.

Hundreds of newspaper clippings had been pinned across them.

Every article mentioned the lighthouse.

Disappearances.

Strange lights.

Missing fishermen.

In the center of the room stood an old wooden desk.

A journal rested on top.

The same symbol from the muddy footprints was carved into its cover.

Lily opened it.

Inside was a map.

A red line connected the house to the lighthouse.

But it didn't use the roads.

It used a hidden tunnel.

A floorboard creaked beneath her feet.

Something was underneath.

What should I do?''',
    choice1: 'Open Floorboard',
    choice2: 'Read More',
    nextScene1: 'Hidden Passage',
    nextScene2: 'Journal Room',
  ),

  StoryScene(
    currentScene: 'Hidden Passage',
    imagePath: 'assets/images/HiddenPassage.png',
    text: '''Lily pulled the loose floorboard aside.

A narrow stone staircase descended into darkness.

Cold air rushed upward.

The tunnel smelled of seawater.

She switched on her flashlight and climbed down.

The passage stretched beneath the house.

Strange symbols covered the walls.

The same symbol from the journal.

The same symbol from the muddy footprints.

Someone had been here many times.

After several minutes, the tunnel opened into a large underground chamber.

A rusted metal door stood at the far end.

Above it, someone had painted a warning in red:

DO NOT FOLLOW THE LIGHT.

Lily pushed the door open.

Moonlight flooded the chamber.

She froze.

The tunnel exited onto the cliffs below Windy Hill.

The lighthouse stood directly above her.

The same lighthouse from the journal.

The same lighthouse from the photographs.

The same lighthouse from her nightmare.

There was nowhere else to go.

Only one path remained.

What should I do?''',
    choice1: 'Climb Lighthouse',
    choice2: 'Turn Back',
    nextScene1: 'Lighthouse',
    nextScene2: 'Lighthouse',
  ),
];
