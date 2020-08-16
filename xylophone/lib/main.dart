import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded CreateKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27.0),
        ),
        onPressed: () {
          PlaySound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CreateKey(color: Colors.deepPurple.shade900, soundNum: 1),
              CreateKey(color: Colors.deepPurple.shade700, soundNum: 2),
              CreateKey(color: Colors.deepPurple.shade500, soundNum: 3),
              CreateKey(color: Colors.deepPurple.shade300, soundNum: 4),
              CreateKey(color: Colors.deepPurple.shade100, soundNum: 5),
              CreateKey(color: Colors.deepPurple.shade50, soundNum: 6),
              CreateKey(color: Colors.white, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
