import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieNumber = 1;
  int rightDieNumber = 1;
  Random rng = new Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                // Create our anonymous "listener" function
                setState(() {
                  int newVal = rng.nextInt(7); // Generate a random number
                  if (newVal < 1) {
                    newVal = 1;
                  }
                  leftDieNumber = newVal;
                });
              },
              child: Image.asset('images/dice$leftDieNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  int newVal = rng.nextInt(7); // Generate a random number
                  if (newVal < 1) {
                    newVal = 1;
                  }
                  rightDieNumber = newVal;
                });
              },
              child: Image.asset('images/dice$rightDieNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
