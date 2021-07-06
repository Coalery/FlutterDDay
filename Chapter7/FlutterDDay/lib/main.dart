import 'package:flutter/material.dart';
import 'package:flutterdday/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '디데이',
      home: MainPage(),
    );
  }
}