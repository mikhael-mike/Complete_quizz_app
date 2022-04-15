import 'package:flutter/material.dart';
import 'package:quiz_full_app/result.dart';
// import 'package:quiz_full_app/answer.dart';
// import 'question.dart';
import 'quiz.dart';


void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   var _questionIndex = 0;
   var _totalScore = 0;

  void _answerQuotion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print('Answer clicked');
      print(_questionIndex);
      if(_questionIndex < _questions.length){
        print('We have more questions!');
      } else {
        print('No more questions');
      }
    });
     
    }

  final _questions = const [
    {
      'questionText': 'What your favorite color?',
      'answer': [{'text': 'Black', 'score': 10}, {'text':'Red', 'score': 5}, {'text': 'Green', 'score': 3}, {'text':'White', 'score': 1}]
    },
    {
      'questionText': 'What your favorite animal?',
      'answer': [{'text': 'Rabbit', 'score': 3}, {'text': 'Snake', 'score': 11}, {'text': 'Elephant', 'score': 5}, {'text': 'Lion', 'score': 9}]
    },
    {
      'questionText': 'What your favorite animal?',
      'answer': [{'text': 'Rabbit', 'score': 2}, {'text': 'Snake', 'score': 7}, {'text': 'Elephant', 'score': 6}, {'text': 'Lion', 'score': 3}]
    },
    {
      'questionText': 'What your favorite instructor?',
      'answer': [{'text': 'Max', 'score': 1}, {'text': 'Max', 'score': 1}, {'text': 'Max', 'score': 1}, {'text': 'Max', 'score': 1}]
    },
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Helloo'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(answerQuestion: _answerQuotion, questionIndex: _questionIndex, questions:  _questions,)
        : Result(),
      ),
    );
  }
}