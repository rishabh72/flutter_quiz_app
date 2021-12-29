import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/result.dart';
import 'quiz.dart';

//Depricated Buttons
// RaisedButton ==> ElevatedButton(color automatically picked by app theme color)
// FlatButton  ==> TextButton
// OutlineButton ==> OutlinedButton

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
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
  var incorrectQuestions = 0;
  var correctQuestions = 0;

  void restartQuizHandler() {
    setState(() {
      incorrectQuestions = 0;
      correctQuestions = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int qIndex, String chosenAns) {
    if (questions[qIndex]['correctAnswer'] == chosenAns) {
      setState(() {
        correctQuestions += 1;
      });
    } else {
      setState(() {
        incorrectQuestions += 1;
      });
    }
    setState(() {
      _questionIndex += 1;
    });
  }

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    print(correctQuestions);
    print(incorrectQuestions);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions, _questionIndex, _answerQuestion)
            : Result({
                'correctQuestions': correctQuestions,
                'incorrectQuestions': incorrectQuestions
              }, restartQuizHandler),
      ),
    );
  }
}
