import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App", //display on toolbar
      home: LoginPage(),
    );
  }
}
