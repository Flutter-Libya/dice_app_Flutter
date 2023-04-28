# Dice App

This is a simple Flutter application that simulates rolling two dice. The app uses Material design and consists of a single screen with a red background and app bar. The main widgets and functionality of the app include:

- **App Bar**: The app bar at the top of the screen displays the title "Dice" and has a red background.
- **DicePage**: This StatefulWidget is the main body of the app, which displays the two dice images side-by-side.
- **GestureDetector**: Each dice image is wrapped in a GestureDetector, allowing users to tap on either of the dice to trigger a dice roll.
- **Random Number Generation**: The `changeDiceNumber` function is responsible for generating random numbers between 1 and 6 for both dice. This function is called when either of the dice is tapped.
- **State Management**: The `_DicePageState` class manages the state of the dice numbers and updates the UI accordingly when a new roll is performed.
- **Image Assets**: The dice images are located in the `images` folder and are displayed using `Image.asset`. The dice image filenames are dynamically generated based on the current dice numbers.

To use this app, simply tap on either of the dice, and both dice will roll to display new numbers.

<p float="left">
  <img src="Simulator Screen Shot - iPhone 14 Pro - 2023-04-26 at 23.05.58.png" width="200" />
  <img src="Simulator Screen Shot - iPhone 14 Pro - 2023-04-26 at 23.06.02.png" width="200" />
</p>
