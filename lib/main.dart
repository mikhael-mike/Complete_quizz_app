import 'package:flutter/material.dart';
import 'package:quiz_full_app/answer.dart';
import 'question.dart';


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
    });
     
    }

  var questions = [
    {
      'questionText': 'What your favorite color?',
      'answer': ['Black', 'Red', 'Green', 'White']
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
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'] as String,
              ),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer)  {
              return Answer(answerQuotion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}