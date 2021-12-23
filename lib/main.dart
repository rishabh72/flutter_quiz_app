import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// "MaterialApp" is the starting point of your app,
// it tells Flutter that you are going to use Material components and follow material design in your app.

// "Scaffold" is another widget provided by material.dart
// It is for base page design of app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Text('default Text'),
      ),
    );
  }
}
