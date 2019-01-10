import 'package:flutter/material.dart';

void main() => runApp(GIMPSApp());

class GIMPSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Great Internet Mersenne Prime Search"),
          actions: <Widget>[
            new Center()
          ],
        ),
      ),
    );
  }
}
