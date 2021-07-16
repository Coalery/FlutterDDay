import 'package:flutter/material.dart';

import 'colors.dart';
import 'item.dart';
import 'make_page.dart';
import 'sharedPref.dart';
import 'widget/dday_unit.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Item> items = [];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UsedColor.background,
      appBar: AppBar(
        title: Text('디데이'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              Item newItem = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MakePage()),
              );
              await save([...items, newItem]);
              setState(() {});
            },
          )
        ],
      ),
      body: FutureBuilder<List<Item>>(
        future: readAll(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            items = snapshot.data!;
            return items.isNotEmpty ? _mainWidget(context) : _emtpyWidget();
          }
          return CircularProgressIndicator();
        },
      )
    );
  }

  Widget _mainWidget(BuildContext context) {
    return ListView(
      children: items.map(
        (item) => DDayUnit(item: item)
      ).toList()
    );
  }

  Widget _emtpyWidget() {
    return Center(
      child: Text('등록된 디데이가 없습니다.\n디데이를 추가해주세요!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: UsedColor.text,
          fontSize: 20
        )
      )
    );
  }
}