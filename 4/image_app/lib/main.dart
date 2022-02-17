import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cat Images',
      home: MyHomePage(title: 'Not used now'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imageUrl = 'https://cataas.com/cat'; // API returns a random cat image

  void _resetCat() {
    setState(
      () {
        // print('Fetching a new cat!'); // for debugging only
        imageUrl = 'https://cataas.com/cat?v=' +
            Random()
                .nextInt(10000000)
                .toString(); // sad hack to prevent url (and image) caching
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imageUrl,
              width: double.infinity, // max width
              height: MediaQuery.of(context).size.height / 1.7,
              // height: 500, // alternative fixed height
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(5),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: _resetCat,
                child: Text(
                  "Fetch a new cat!",
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
