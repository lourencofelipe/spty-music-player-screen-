import 'package:flutter/material.dart';
import 'playerPage.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new PlayerHome(),
    );
  }
}

class PlayerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.brown, Colors.black],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Icon(
            Icons.keyboard_arrow_down,
            size: 50,
          ),
          actions: <Widget>[
            Icon(
              Icons.format_list_bulleted,
              size: 50,
            ),
          ],
          centerTitle: true,
          title: Column(
            children: <Widget>[
              Text(
                "PLAYING YOUR PLAYLIST",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Musics",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: PlayerPage(),
      ),
    );
  }
}
