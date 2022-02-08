import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are... strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          //TextButton(
          //  style: TextButton.styleFrom(
          //    primary: Colors.orange,
          //  ),
          //  onPressed: resetHandler,
          //  child: Text('Restart Quiz!'),
          //)
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.lightBlue,
              ),
              primary: Colors.blue,
            ),
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
