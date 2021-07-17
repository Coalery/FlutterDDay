import 'package:flutter/material.dart';
import 'package:step01/make_page.dart';
import 'package:step01/widget/dday_unit.dart';

import 'item.dart';
import 'sharedPref.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Item> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF27282D),
      appBar: AppBar(
        title: Text('디데이'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              Item newItem = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MakePage())
              );
              await save([...items, newItem]);
              setState(() {});
            }
          )
        ],
      ),
      body: FutureBuilder<List<Item>>(
        future: readAll(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            items = snapshot.data!;
            return ListView(
              children: items.map(
                (item) => DDayUnit(item: item)
              ).toList()
            );
          }
          return CircularProgressIndicator();
        },
      )
    );
  }
}