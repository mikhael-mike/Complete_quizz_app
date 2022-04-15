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

  void answerQuotion() {
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
      'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What your favorite animal?',
      'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What your favorite instructor?',
      'answer': ['Max', 'Max', 'Max', 'Max']
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
        ? Quiz(answerQuestion: answerQuotion, questionIndex: _questionIndex, questions:  _questions,)
        : Result(),
      ),
    );
  }
}