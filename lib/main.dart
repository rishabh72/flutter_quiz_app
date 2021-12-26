import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// Now we make separate widget for Answers
// we will make new widget(Answer widget) in answer.dart file
//     MyApp
//       |
//       |
//  -------------
//  |           |
// Question    Answer

// we will implement how to call function(that is in MyApp) from child widget(Answer)
//so we will pass function into constructor of child widget

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
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion)
            ],
          )),
    );
  }
}
