// Flutter is all about widgets for example AppBar Widget, List Widget, ListItem Widget

import 'package:flutter/material.dart';

void main() {
  // runApp (material.dart)
  // runApp takes Widget Tree and draws on screen
  runApp(MyApp());
}

//Creating Root Widget
// Flutter/material.dart has StatelessWidget class so we import material.dart file

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Hi"),
    ); // MaterialApp from 'material.dart. MaterialApp uses named arguments
    // we have used Text widget buitin widget in flutter
  }
}
