import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Map<String, int> resultObj;
  final VoidCallback restartQuizFn;

  Result(this.resultObj, this.restartQuizFn);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          'CORRECT: ' + resultObj['correctQuestions'].toString(),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Text(
          'INCORRECT: ' + resultObj['incorrectQuestions'].toString(),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.red,
          ),
        ),
        FlatButton(
          onPressed: restartQuizFn,
          child: Text('Restart Quiz'),
          color: Colors.black,
          textColor: Colors.white,
        ),
      ]),
    );
  }
}
