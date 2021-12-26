import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

// Map
// Map is a key-value pair similar to object in javascript
// {"a": "123"}

// Type casting
// questions[_questionIndex]['answers'] --> dart is not able to understand what will be the data type
// so we use "as" keyword
// questions[_questionIndex]['answers'] as List<String>

// ... is spread operator
// spread operator spread out dart list into comma separated list of items

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((option) {
              return Answer(option, _answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
