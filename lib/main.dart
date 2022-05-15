import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color myColor, int soundNumber, String myText}) {
    return Expanded(
      child: MaterialButton(
        color: myColor,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('$myText'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(myColor: Colors.red, myText: 'd', soundNumber: 1),
              buildKey(myColor: Colors.orange, myText: 'r', soundNumber: 2),
              buildKey(myColor: Colors.yellow, myText: 'm', soundNumber: 3),
              buildKey(myColor: Colors.green, myText: 's', soundNumber: 4),
              buildKey(myColor: Colors.teal, myText: 'f', soundNumber: 5),
              buildKey(myColor: Colors.blue, myText: 'l', soundNumber: 6),
              buildKey(myColor: Colors.purple, myText: 't', soundNumber: 7),
              buildKey(myColor: Colors.red, myText: 'd', soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
