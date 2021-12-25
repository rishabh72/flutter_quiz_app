import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //final is runtime constant

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
