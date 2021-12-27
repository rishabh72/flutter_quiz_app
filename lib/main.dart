import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// if-else condition,if-else if-else if condition, && operator, || operator exists in dart

// null value
// var username; // username is null
// username = "max";
// Or we can explicitly declare username = null

// Null safety => dart(2.12.0)
// variables can not contain null unless you say they can.

// Null assertion operator
// If you are sure that expression with nullable type is not null
// you can use ! operator.

// String name = "rishabh";
// name = null --> gives error
// To tell dart that "name" can hold string or null value
// String? name = "rishabh";

// Ternary operator syntax condion1 ? action1 : action2

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = const [
    {
      'questionText': 'Which is a synonym of synthesis?',
      'answers': ['picture', 'imitation', 'split', 'blend'],
      'correctAnswer': 'blend'
    },
    {
      'questionText': "Which is a synonym of epidemic?",
      'answers': ['artificial', 'swift', 'infectious', 'mocking'],
      'correctAnswer': 'infectious'
    },
    {
      'questionText': 'Which is a synonym of refrain?',
      'answers': ['continue', 'abstain', 'subtract', 'permit'],
      'correctAnswer': 'abstain'
    },
    {
      'questionText': 'Which is a synonym of conjecture?',
      'answers': ['approval', 'demonstration', 'weight', 'guess'],
      'correctAnswer': 'guess'
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((option) {
                    return Answer(option, _answerQuestion);
                  }).toList()
                ],
              )
            : Center(
                child: Text("You are done"),
              ),
      ),
    );
  }
}
