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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.teal,
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.cyan,
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.indigoAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
