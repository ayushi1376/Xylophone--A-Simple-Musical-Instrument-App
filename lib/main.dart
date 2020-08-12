import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() =>
  runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnum){
    final player=AudioCache();
    player.play('note$soundnum.wav');
  }
  Expanded buildKey({Color color,int soundnum}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(soundnum);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundnum: 1),
                buildKey(color: Colors.orange, soundnum: 2),
                buildKey(color: Colors.yellow, soundnum: 3),
                buildKey(color: Colors.green, soundnum: 4),
                buildKey(color: Colors.teal, soundnum: 5),
                buildKey(color: Colors.blue, soundnum: 6),
                buildKey(color: Colors.purple, soundnum: 7),
              ],
            ),
        ),
      ),
    );
  }
}
