import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    var resultText = "You did it";

    if (resultScore <= 10) {
      resultText = "you are awsome and innocent";
    } else if (resultScore <= 20) {
      resultText = "Pretty likable";
    } else if (resultScore < 25) {
      resultText = "you are mad ";
    } else {
      resultText = "You are bad ass";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
