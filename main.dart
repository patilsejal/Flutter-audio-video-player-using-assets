//import 'dart:ffi';

import 'package:finalasset_app/tt.dart';
import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
import 'package:finalasset_app/taylorinfo.dart';
import 'package:finalasset_app/exile.dart';
import 'package:finalasset_app/tt.dart';

void main() {
  runApp(MusicStreaminApp());
}

class MusicStreaminApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 9,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 48,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            height: 300,
                            //width: 300,
                            // decoration: BoxDecoration(color: Colors.red),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Taylor Swift',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 200,
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          height: 300,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              color: Colors.pink,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  blurRadius: 4,
                                                  spreadRadius: 3,
                                                ),
                                              ],
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    'https://www.breatheheavy.com/wp-content/uploads/2019/05/taylor-swift-ts7.jpg',
                                                  ),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Taylorinfo()),
                                          );
                                        },
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'The Legend',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  'T-Swizz',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            height: 620,
                            padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      'Exile',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                    subtitle: Text('ft. Taylor Swift'),
                                    trailing: Icon(Icons.more_vert),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Exile()),
                                    );
                                  },
                                ),
                                FlatButton(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        'Cardigan',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                      subtitle: Text('ft. Taylor Swift'),
                                      trailing: Icon(Icons.more_vert),
                                    ),
                                    onPressed: () {}),
                                FlatButton(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        'Augest',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                      subtitle: Text('ft. Taylor Swift'),
                                      trailing: Icon(Icons.more_vert),
                                    ),
                                    onPressed: () {}),
                                FlatButton(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      '22',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                    subtitle: Text('ft. Taylor Swift'),
                                    trailing: Icon(Icons.more_vert),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Twentytwo()),
                                    );
                                  },
                                ),
                                FlatButton(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        'You need Calm down',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                      subtitle: Text('ft. Taylor Swift'),
                                      trailing: Icon(Icons.more_vert),
                                    ),
                                    onPressed: () {}),
                                FlatButton(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        'Love Story',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                      subtitle: Text('ft. Taylor Swift'),
                                      trailing: Icon(Icons.more_vert),
                                    ),
                                    onPressed: () {}),
                                FlatButton(
                                  child: ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      'Lover',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                    subtitle: Text('ft. Taylor Swift'),
                                    trailing: Icon(Icons.more_vert),
                                  ),
                                  onPressed: () {},
                                ),
                                FlatButton(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        'Gorgeous',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                      subtitle: Text('ft. Taylor Swift'),
                                      trailing: Icon(Icons.more_vert),
                                    ),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            height: 300,
                            //width: 300,
                            // decoration: BoxDecoration(color: Colors.red),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Elite Autograph',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 200,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(30),
                                        height: 340,
                                        width: 330,
                                        decoration: BoxDecoration(
                                            color: Colors.pink,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                blurRadius: 4,
                                                spreadRadius: 3,
                                              ),
                                            ],
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  'https://www.logolynx.com/images/logolynx/s_16/16e406ce2730aa6d7fb97f90c99afc9e.jpeg',
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'The Legend',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
