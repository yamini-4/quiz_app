import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function quizRestart;

  Result(this.resultScore, this.quizRestart);

  get resultQuote {
    String quizQuote = "";
    if (resultScore >= 80) {
      return quizQuote = "Awwwessome!!";
    } else if (resultScore >= 45) {
      return quizQuote = "Paravala!";
    } else {
      return quizQuote = " get lost !";
    }
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
          resultQuote,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: quizRestart,
          child: Text(
            "Restart Quiz",
            style: TextStyle(fontSize: 17),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          ),
        ),
      ]),
    );
  }
}
