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
        RaisedButton(
          onPressed: () => {},
          child: Text('Raised Button'),
          color: Colors.blue,
          textColor: Colors.white,
        ),
        FlatButton(
          onPressed: () => {},
          child: Text('Flat Button'),
          textColor: Colors.blue,
        ),
        OutlineButton(
          onPressed: () => {},
          child: Text('Outlined Button'),
          textColor: Colors.blue,
          color: Colors.blue,
          borderSide: BorderSide(color: Colors.blue),
        ),
        ElevatedButton(
          onPressed: () => {},
          child: Text('Elevated Button'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
        ),
        ElevatedButton(
          onPressed: () => {},
          child: Text('Elevated Button'),
          style: ElevatedButton.styleFrom(
              primary: Colors.orange, onPrimary: Colors.white),
        ),
        TextButton(
          onPressed: () => {},
          child: Text('TextButton'),
          style: TextButton.styleFrom(primary: Colors.orange),
        ),
        OutlinedButton(
          onPressed: () => {},
          child: Text('Outlined Button'),
          style: OutlinedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(color: Colors.orange),
          ),
        )
      ]),
    );
  }
}
