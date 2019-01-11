import 'package:flutter/material.dart';

class CPUListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CPU List',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CPU List'),
        ),
        body: new Center(),
      ),
    );
  }
}
