import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // [] used for mention the key valiues
          questions[questionIndex]["questionText"],
        ),
//here wrapping into say it list
// ... is soread opertord it will pull all the values in the list,to other list
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
