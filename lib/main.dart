import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void changeDiceNumber() {
    setState(() {
      leftdiceNumber = Random().nextInt(6) + 1;
      rightdiceNumber = Random().nextInt(6) + 1;
    });
  }

  int leftdiceNumber = 1;
  int rightdiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: changeDiceNumber,
                child: Image.asset("images/dice$rightdiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: changeDiceNumber,
                child: Image.asset("images/dice$leftdiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
