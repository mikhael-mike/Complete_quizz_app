import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function() selectHandler;
  final String answerText;

  // const Answer({ Key? key, this.selectHandler }) : super(key: key);
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}