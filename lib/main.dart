import 'package:flutter/material.dart';

// Column widget is used to render widgets in column

// list are another type of data type in dart
// var list = ['hello','man']

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: Column(
            children: [
              Text('The question text'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
