import 'package:flutter/material.dart';

class TextW extends StatelessWidget {
  //const TextW({Key? key}) : super(key: key);

  final String text;

  TextW(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
