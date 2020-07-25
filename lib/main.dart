import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

String url = "https://sahaysdailypost.com/";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DailyPost',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "/": (context) => Home(),
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final webView = FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
    //webView.close();
  }

  @override
  void dispose() {
    webView.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        url: url,
        withJavascript: true,
        withLocalStorage: true,
        withZoom: true,
      ),
    );
  }
}
