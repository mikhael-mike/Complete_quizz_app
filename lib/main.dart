import 'package:flutter/material.dart';



void main() => runApp(MyApp());



class MyApp extends StatefulWidget {

 

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   var questionIndex = 0;

  void answerQuotion() {
    setState(() {
      questionIndex = questionIndex + 1;
      print('Answer clicked');
      print(questionIndex);
    });
     
    }

  var questions = [
      'What your favorite color?',
      'What your favorite animal?'
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuotion),
              RaisedButton(
              child: Text('Answer 1'),
              onPressed: null),
              RaisedButton(
              child: Text('Answer 1'),
              onPressed: null),
          ],
        ),
      ),
    );
  }
}