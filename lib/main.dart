import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void playsound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color , int number}){
    return Expanded(
      child : FlatButton(
        onPressed: (){          
          playsound(number);
        },
        child: Text(""),
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children : <Widget>[
              buildKey(color:Colors.red,number:1),
              buildKey(color:Colors.yellow,number:2),
              buildKey(color:Colors.green,number:3),
              buildKey(color:Colors.orange,number:4),
              buildKey(color:Colors.blue,number:5),
              buildKey(color:Colors.teal,number:6),
              buildKey(color:Colors.red,number:7),
              
            ]
          ),
        )
      ),
    );
  }
}
