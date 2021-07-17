import 'package:flutter/material.dart';
import 'package:step01/make_page.dart';
import 'package:step01/widget/dday_unit.dart';

import 'item.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Item> items = [];

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
                ).then((newItem) {
                  setState(() {
                    items.add(newItem);
                  });
                });
              }
            )
          ],
        ),
        body: ListView(
          children: items.map(
            (item) => DDayUnit(item: item)
          ).toList()
        )
      )
    );
  }
}