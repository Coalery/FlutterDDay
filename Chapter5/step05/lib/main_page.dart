import 'package:flutter/material.dart';
import 'package:step01/make_page.dart';
import 'package:step01/widget/dday_unit.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '디데이',
      home: Scaffold(
        backgroundColor: Color(0xFF27282D),
        appBar: AppBar(
          title: Text('디데이'),
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MakePage())
                );
              }
            )
          ],
        ),
        body: ListView(
          children: [
            DDayUnit(title: '병원', dday: 'D-13'),
            DDayUnit(title: '미적 과제', dday: 'D-12'),
            DDayUnit(title: '누구누구 만나야함', dday: 'D-24'),
            DDayUnit(title: '생일', dday: 'D-122')
          ]
        )
      )
    );
  }
}