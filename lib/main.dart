import 'package:flutter/material.dart';

// Stateless Widget
// input data ==> Widget ==> Renders UI(Gets rerendered when input data changes)

// Stateful Widget
// input data ==> Widget[internal state] ==> Renders UI(Gets rerendered when input data or local state changes)

// We can convert stateless widget into stateful widget using shift + control + R

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
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
