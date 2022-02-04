import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import './quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Elephant', 'Snake', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Anurag', 'Shashank', 'Sayali', 'Shivam'],
    },
  ];

  void _answerQuestion() {
    // var aBool = true;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_answerQuestion, _questionIndex, _questions)
              : const Result()),
    );
  }
}
