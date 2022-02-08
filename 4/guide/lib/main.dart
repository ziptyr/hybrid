import 'package:flutter/material.dart';
import 'package:guide/result.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //void answerQuestion() {
  //  print('Answer chosen');
  //}
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 3,
        },
        {
          'text': 'White',
          'score': 1,
        },
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {
          'text': 'Rabbit',
          'score': 1,
        },
        {
          'text': 'Snake',
          'score': 10,
        },
        {
          'text': 'Elephant',
          'score': 3,
        },
        {
          'text': 'Lion',
          'score': 5,
        },
      ],
    },
    {
      'questionText': 'Who is your favourite instructor?',
      'answers': [
        {
          'text': 'Max',
          'score': 0,
        },
        {
          'text': 'Max',
          'score': 0,
        },
        {
          'text': 'Max',
          'score': 0,
        },
      ],
    },
  ];

  var _i = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _i = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _i++;
    });
    if (_i < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _i < _questions.length
            ? Quiz(
                i: _i, questions: _questions, answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
