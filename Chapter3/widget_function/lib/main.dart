import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('플러터에요'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              _build('1234', Icons.check),
              _build('1234', Icons.circle),
              _build('1234', Icons.notification_add),
              _build('1234', Icons.add_a_photo_rounded),
            ]
          )
        )
      )
    );
  }

  Widget _build(String title, IconData iconData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        Icon(
          iconData
        )
      ]
    );
  }
}