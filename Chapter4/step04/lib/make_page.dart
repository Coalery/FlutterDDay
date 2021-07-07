import 'package:flutter/material.dart';

class MakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF27282D),
      appBar: AppBar(
        title: Text('생성하기'),
        backgroundColor: Color(0xFF1D1D1D),
        actions: [
          TextButton(
            child: Text("완료", style: TextStyle(fontSize: 17)),
            onPressed: () {

            }
          )
        ],
      ),
      body: Column(
        children: [
          _customImageButton(context),
          _customTextField('제목'),
          _customTextField('날짜')
        ],
      )
    );
  }

  Widget _customTextField(String text) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextField(
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Color(0xFF5A5B6A)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0x33D4D4D4)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFFFFFF)),
          ),
        )
      )
    );
  }

  Widget _customImageButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: TextButton(
          onPressed: () {

          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              Color(0xFF3C3D46)
            )
          ),
          child: Icon(
            Icons.photo_album,
            color: Color(0xFF5A5B6A)
          )
        )
      )
    );
  }
}