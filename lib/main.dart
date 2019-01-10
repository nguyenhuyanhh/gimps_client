import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(GIMPSApp());

class GIMPSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: routes,
      initialRoute: '/',
    );
  }
}
