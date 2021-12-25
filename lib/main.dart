import 'package:flutter/material.dart';

// Column widget is used to render widgets in column

// list are another type of data type in dart
// var list = ['hello','man']

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen');
  }

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
                onPressed: () => print(
                    "Answer1 pressed"), //anoymous function with single line of code
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  //anoymous function with curely braces
                  print("Answer 2 selected");
                  print("Answer 2 chosen");
                },
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
