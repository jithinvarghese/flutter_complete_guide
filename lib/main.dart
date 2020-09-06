// import the pakagaes
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
// import own files
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex =
      0; //_ means private propoerty which can be acessible inside this file .
  var _totalScore = 0;

  void _restartQiuz() {
    setState(() {
      _questionindex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      "questionText": "what's your favorite color?",
      "answers": [
        {"text": "black", "score": 10},
        {"text": "Green", "score": 8},
        {"text": "red", "score": 6},
        {"text": "white", "score": 4}
      ],
    },
    {
      "questionText": "whats's your favorite animal?",
      "answers": [
        {"text": "cat", "score": 20},
        {"text": "dog", "score": 30},
        {"text": "cow", "score": 25},
        {"text": "fish", "score": 10}
      ],
    },
    {
      "questionText": "whats's your favorite Bird?",
      "answers": [
        {"text": "peakoke", "score": 2},
        {"text": "eva", "score": 3},
        {"text": "parrot", "score": 5},
        {"text": "crow", "score": 1}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionindex = _questionindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // map class withkey value pairs
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestion,
                questionIndex: _questionindex,
                questions: _questions)
            : Result(_totalScore, _restartQiuz),
      ),
    );
  }
}
