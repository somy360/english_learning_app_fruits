import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(SpanishApp());
  
class SpanishApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fruit - Press a fruit'),
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              buildKey(assetName: 'orange'),
              buildKey(assetName: 'apple'),
              buildKey(assetName: 'banana'),
              buildKey(assetName: 'strawberry'),
              buildKey(assetName: 'grapes'),
              buildKey(assetName: 'pineapple'),
              buildKey(assetName: 'watermelon'),
              buildKey(assetName: 'cherry'),
              buildKey(assetName: 'lime'),
              buildKey(assetName: 'mango'),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(String assetName) {
    final player = AudioCache();
    player.play('$assetName.m4a');
  }

  Container buildKey({String assetName}) {
    return Container(
      padding: EdgeInsets.all(5),
      child: FlatButton(
        onPressed: () {
          playSound(assetName);
        },
        child: Image(
          image: AssetImage('images/$assetName.jpg'),
        ),
      ),
    );
  }
}
