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
        body: ListView(
          children: [
            _buildTile('안드로이드, iOS, 그리고 플러터', '1차시', Icons.check_box_outlined, Colors.green),
            _buildTile('플러터를 위한 다트 언어 기초', '2차시', Icons.check_box_outlined, Colors.green),
            _buildTile('플러터 가지고 놀기', '3차시', Icons.check_box_outlined, Colors.green),
            _buildTile('디데이 화면 만들기', '4차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('디데이 실제로 추가하기', '5차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('디데이 데이터를 로컬에 저장하기', '6차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('자잘한 문제를 해결하고, 마무리!', '7차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '8차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '9차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '10차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '11차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '12차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '13차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '14차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '15차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '16차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '17차시', Icons.check_box_outline_blank, Colors.red),
            _buildTile('스크로오오오오올', '18차시', Icons.check_box_outline_blank, Colors.red),
          ]
        )
      )
    );
  }

  Widget _buildTile(String title, String subTitle, IconData iconData, Color iconColor) {
    return Container(
      height: 64,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
              )
            ],
          ),
          Icon(
            iconData,
            color: iconColor,
          )
        ],
      ),
    );
  }
}