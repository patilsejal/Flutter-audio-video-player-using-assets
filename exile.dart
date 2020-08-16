import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'package:video_player/video_player.dart';

typedef Void OnError(Exception exception);

class Exile extends StatefulWidget {
  @override
  _ExileState createState() => _ExileState();
}

class _ExileState extends State<Exile> {
  Duration _duration = Duration();
  Duration _position = Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });
    advancedPlayer.positionHandler = (d) => setState(() {
          _position = d;
        });
  }

  String localFilePath;
  Widget _tab(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
              children: children
                  .map(
                      (w) => Container(child: w, padding: EdgeInsets.all(12.0)))
                  .toList()),
        )
      ],
    );
  }

  Widget _btn(String txt, VoidCallback onpressed) {
    return ButtonTheme(
      minWidth: 48.0,
      child: Container(
        width: 150,
        height: 45,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Text(txt),
          color: Colors.deepPurple,
          textColor: Colors.white,
          onPressed: onpressed,
        ),
      ),
    );
  }

  Widget slider() {
    return Slider(
        activeColor: Colors.black,
        inactiveColor: Colors.purple,
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            seekToSecond(value.toInt());
            value = value;
          });
        });
  }

  Widget Exile() {
    return _tab([
      _btn('Play', () => audioCache.play('exile.mp3')),
      _btn('Pause', () => advancedPlayer.pause()),
      _btn('Stop', () => advancedPlayer.stop()),
      slider()
    ]);
  }

  Void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 1.0,
            backgroundColor: Colors.deepPurple,
            title: Text('Exile song'),
          ),
          body: TabBarView(
            children: <Widget>[Exile()],
          )),
    );
  }
}
