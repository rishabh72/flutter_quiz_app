import 'package:flutter/material.dart';

// Column widget is used to render widgets in column

// list are another type of data type in dart
// var list = ['hello','man']

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is result of 44 + 74 ?',
      "What is the result of 21 + 56 - 34?",
      "What is the result of 56 multiplied by 3?"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
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
