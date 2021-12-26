import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('Answer '),
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
