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
        body: _DicePage(),
      ),
    ),
  );
}

class _DicePage extends StatefulWidget {
  @override
  __DicePageState createState() => __DicePageState();
}

class __DicePageState extends State<_DicePage> {
  var leftDiceNo = 1;
  var rightDiceNo = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Dice1 pressed');
                setState(() => rollTheDices());
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Dice1 pressed');
                setState(() => rollTheDices());
              },
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          )
        ],
      ),
    );
  }

  void rollTheDices() {
    leftDiceNo = Random().nextInt(6) + 1;
    rightDiceNo = Random().nextInt(6) + 1;

    print('Dice1 pressed $leftDiceNo');
    print('Dice2 pressed $rightDiceNo');
  }
}
