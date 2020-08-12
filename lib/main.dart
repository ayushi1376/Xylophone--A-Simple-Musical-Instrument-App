import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(XylophoneApp());
}
class XylophoneApp extends StatelessWidget {
  void playsound(int soundnum){
    final player=AudioCache();
    player.play('note$soundnum.wav');
  }
  Expanded buildKey(){
    return Expanded(
      child: FlatButton(
        color: Colors.red,
        onPressed: (){
          playsound(1);
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
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
              ],
            ),
        ),
      ),
    );
  }
}
