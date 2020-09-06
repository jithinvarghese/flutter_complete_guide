import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it";

    if (resultScore <= 20) {
      resultText = "you are awsome and innocent";
    } else if (resultScore <= 30) {
      resultText = "Pretty likable";
    } else if (resultScore < 45) {
      resultText = "you are mad ";
    } else {
      resultText = "You are bad ass";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text("Restart Qiuz"),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
