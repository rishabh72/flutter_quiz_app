import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

//final vs const
// final is run time constant but const is both compile time and run time constant.
// Check out Question widget,at the point of
// writing value of questionText is not known,
// it is like dynamic but when code run(compiles) value is locked into widget
// var list = const [11,12,13]; ==> list = [1,2,3] works but list.add(12) gives error
// const list = [11,12,13]; => if we change dart gives error

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
