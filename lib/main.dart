import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("First App"),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex],
              ),
              ElevatedButton(
                child: const Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              ElevatedButton(
                child: const Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              ElevatedButton(
                child: const Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
            ],
          )),
    );
  }
}
