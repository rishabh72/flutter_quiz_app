import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //final is runtime constant

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Container widget is used to give margin, padding, background color, border
      width: double.infinity, // double.infinity = 100%
      child: Text(
        //Here Text widget has a width = its parent width
        questionText,
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      // color: Colors.green,
      margin: EdgeInsets.all(15),
    );
  }
}


// Enums
// enum Status{
//   started,
//   working,
//   completed,
//   finished
// }

// class Person{
//   String name;
//   int birthYear;
//   String gender;
  
//   Person(this.name,this.birthYear,this.gender);
  
//   Person.twentyYearsPerson(this.name):birthYear = 1990, gender='male';
  
// }

//   var p1 = Person.twentyYearsPerson("Rishabh");


