import 'package:flutter/material.dart';

import './textControlW.dart';
import './textW.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: TextControlW(),
      ),
    );
  }
}
