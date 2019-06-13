import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  final colors = [
    Colors.red,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.white,
    Colors.amber,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {},
              child: Text("Let's play something"),
            ),
          ),
        ),
      ),
    );
  }
}
