import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var leftDiceNumber = 1;

  var rightDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
      });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text('Dicee'),

            ),
         backgroundColor: Colors.red,
          ),
          body:Center(
            child: Row(
              children: [
        Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(image: AssetImage('image/dice$leftDiceNumber.png'),
                ),
              ),
            ),
        ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
changeDiceFace();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image(image: AssetImage('image/dice$rightDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.red,
        ),
    );
  }
}