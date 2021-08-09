import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': "What is my fav number?",
      'answers': [
        {'text': 'one', 'score': 1},
        {'text': 'two', 'score': 9},
        {'text': 'three', 'score': 6},
        {'text': 'four', 'score': 10}
      ]
    },
    {
      'questionText': "What is my fav color?",
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'yellow', 'score': 5},
        {'text': 'pink', 'score': 2},
        {'text': 'purple', 'score': 6}
      ]
    },
    {
      'questionText': "What is my fav pet?",
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 8},
        {'text': 'swan', 'score': 7},
        {'text': 'parrot', 'score': 6}
      ]
    },
    {
      'questionText': "What is my fav destination?",
      'answers': [
        {'text': 'maldives', 'score': 3},
        {'text': 'bali', 'score': 5},
        {'text': 'seoul', 'score': 10},
        {'text': 'italy', 'score': 6}
      ]
    },
    {
      'questionText': "What is my fav food?",
      'answers': [
        {'text': 'pizza', 'score': 4},
        {'text': 'biriyani', 'score': 10},
        {'text': 'fried rice', 'score': 7},
        {'text': 'maggi', 'score': 6}
      ]
    },
    {
      'questionText': "What is my fav place to visit?",
      'answers': [
        {'text': 'hill', 'score': 2},
        {'text': 'park', 'score': 8},
        {'text': 'lake', 'score': 7},
        {'text': 'beach', 'score': 10}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print("More to go.....!!!!");
    }
    print(_totalScore);
    print(score);
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
