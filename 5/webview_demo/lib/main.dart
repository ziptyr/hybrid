// simple webview demo. lint causes some warnings with flutter 2.8
// courtesy to https://github.com/eccosuprastyo/flutter/tree/master/webview
// did some style guide and lint fixing changes - 10.2.2022 / TK

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String url;
  const WebViewContainer(this.url, {Key? key}) : super(key: key);
  @override
  // skipping coding style warning with this ("Don't put any logic in createState")
  // ignore: no_logic_in_create_state
  createState() => _WebViewContainerState(url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  final String _url;
  final _key = UniqueKey();
  _WebViewContainerState(this._url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url))
          ],
        ));
  }
}

class Home extends StatelessWidget {
  final _links = [
    'https://tl.oamk.fi/whmp/',
    'https://tl.oamk.fi/cdos/',
    'https://tl.oamk.fi/iotcomms/',
    'https://tl.oamk.fi/sisp/',
    'https://tl.oamk.fi/cloudservices/',
  ];

  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _links.map((link) => _urlButton(context, link)).toList(),
          ),
        ),
      ),
    );
  }

  Widget _urlButton(BuildContext context, String url) {
    return Container(
        padding: const EdgeInsets.all(2.0),
        child: TextButton(
          // color: Theme.of(context).primaryColor,
          // padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(url),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Arial",
        textTheme: const TextTheme(
          button: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
      home: Home(),
    );
  }
}
