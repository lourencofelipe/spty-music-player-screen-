import 'package:flutter/material.dart';
import 'dart:ui';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 45, right: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Material(
                  elevation: 10,
                  child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.network(
                      "https://images-na.ssl-images-amazon.com/images/I/81IoZlwP9AL._SL1500_.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 40),
            ),
            Text(
              "Empire Of The Clouds",
              style: TextStyle(color: Colors.white, fontSize: 27),
            ),
            Text("Iron Maiden",
                style: TextStyle(color: Colors.white, fontSize: 23)),
            Padding(padding: EdgeInsets.only(bottom: 8)),
            Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "00:00",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "18:10",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // Make a proporcional space.
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                  size: 45,
                ),
                Icon(
                  Icons.play_circle_filled,
                  color: Colors.white,
                  size: 60,
                ),
                Icon(
                  Icons.skip_next,
                  color: Colors.white,
                  size: 40,
                ),
                Icon(
                  Icons.remove_circle_outline,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
