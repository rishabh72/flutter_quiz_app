import 'package:flutter/material.dart';
import 'question.dart';

// For Question Text we will make new Stateless widget
// Question Widget which render question text
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  var _questionIndex = 0;

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
              Question(
                questions[_questionIndex],
              ),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: _answerQuestion,
              ),
            ],
          )),
    );
  }
}
