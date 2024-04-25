import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(child: Text('Dicee')),
        backgroundColor: Colors.red,
      ),
      body: const DiceeApp(),
    ),
  ));
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({super.key});

  @override
  State<DiceeApp> createState() => DiceeAppState();
}

class DiceeAppState extends State<DiceeApp> {
  var leftDiceNo = 1;
  var rightDiceNo = 1;
  Random random = Random();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: _generateRandomDiceValues,
              child: Image(
                image: AssetImage('images/dice$leftDiceNo.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: _generateRandomDiceValues,
              child: Image(
                image: AssetImage('images/dice$rightDiceNo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _generateRandomDiceValues() {
    setState(() {
      leftDiceNo = random.nextInt(5);
      rightDiceNo = random.nextInt(5);
    });
  }
}
