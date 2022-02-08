import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        //style: ButtonStyle(
        //  backgroundColor: MaterialStateProperty.all(Colors.orange),
        //  foregroundColor: MaterialStateProperty.all(Colors.white),
        //),
        //style: ElevatedButton.styleFrom(
        //  primary: Colors.orange,
        //  onPrimary: Colors.white,
        //),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
