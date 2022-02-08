import 'package:flutter/material.dart';

import './textW.dart';

class TextControlW extends StatefulWidget {
  //const TextControlW({Key? key}) : super(key: key);
  @override
  State<TextControlW> createState() => _TextControlWState();
}

class _TextControlWState extends State<TextControlW> {
  String _text = 'My first assignment';

  void _welcome() {
    setState(() {
      _text = 'Success!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => {_welcome()},
          child: Text('Change Text'),
        ),
        TextW(_text),
      ],
    );
  }
}
