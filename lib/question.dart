import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final says this value doesnt chnages
  final String questionText;

  //positional argument
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
