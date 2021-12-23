import 'package:flutter/material.dart';

// Different types of widget

// Output & Input (visible)=>
// What the user sees ex. Text(),Card()

// Layout & Control (invisible)
// Give your app structure and control how visible widgets are drawn onto screen
// ex.  Row(), Column(), ListView()

// Container is common widget in visible and invisible widgets

void main() => runApp(MyApp());

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
