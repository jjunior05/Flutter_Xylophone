import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      var player = new AudioCache();
      player.play('note$soundNumber.wav');
    }

    Expanded buildKey({Color color, int numberSound}) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            playSound(numberSound);
          },
          color: color,
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, numberSound: 1),
              buildKey(color: Colors.orange, numberSound: 2),
              buildKey(color: Colors.yellow, numberSound: 3),
              buildKey(color: Colors.green, numberSound: 4),
              buildKey(color: Colors.teal, numberSound: 5),
              buildKey(color: Colors.blue, numberSound: 6),
              buildKey(color: Colors.purple, numberSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
