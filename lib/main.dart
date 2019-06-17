import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  final colors = [
    Colors.red,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.blueGrey,
    Colors.amber,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: createChildrenButtons(),
          ),
        ),
      ),
    );
  }

  List<FlatButton> createChildrenButtons() {
    List<FlatButton> childrenButtons = List<FlatButton>();
    for (Color color in colors) {
      childrenButtons.add(new FlatButton(
        onPressed: () {
          playSound(soundNumber: colors.indexOf(color) + 1);
        },
        color: color,
      ));
    }
    return childrenButtons;
  }
}
