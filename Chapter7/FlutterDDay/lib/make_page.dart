import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'item.dart';

class MakePage extends StatefulWidget {
  @override
  _MakePageState createState() => _MakePageState();
}

class _MakePageState extends State<MakePage> {
  final titleController = TextEditingController();
  final dateController = TextEditingController();
  String? imagePath;

  void getGalleryImage() async {
    PickedFile? image = await ImagePicker().getImage(source: ImageSource.gallery);
    if(image == null) return;

    Directory tempDir = await getApplicationDocumentsDirectory();
    String path = tempDir.path;
    String fileName = basename(image.path);

    File localImage = await File(image.path).copy('$path/$fileName');
    
    setState(() {
      imagePath = localImage.path;
    });
  }

  void complete(BuildContext context) async {
    if(titleController.text.isEmpty) return;
    if(dateController.text.isEmpty) return;
    
    DateTime date;
    try {
      date = DateFormat('yyyy-MM-dd').parse(dateController.text);
    } on FormatException {
      return;
    }

    Item result = new Item(
      title: titleController.text,
      date: date,
      imagePath: imagePath
    );
    Navigator.pop(context, result);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF27282D),
      appBar: AppBar(
        title: Text('생성하기'),
        backgroundColor: Color(0xFF1D1D1D),
        actions: <Widget>[
          TextButton(
            child: Text("완료", style: TextStyle(fontSize: 17)),
            onPressed: () {
              complete(context);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _customImageButton(context),
            _customTextField('제목', titleController),
            _customTextField('날짜', dateController)
          ]
        )
      )
    );
  }

  Widget _customTextField(String text, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Color(0xFF5A5B6A)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0x33D4D4D4)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        )
      )
    );
  }

  Widget _customImageButton(BuildContext context) {
    Widget image = Icon(Icons.photo_album, color: Color(0xFF5A5B6A));

    if(imagePath != null) {
      image = Image.file(
        File(imagePath!),
        fit: BoxFit.cover,
        width: double.infinity
      );
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      child: AspectRatio(
        aspectRatio: 16 / 9,
          child: TextButton(
          onPressed: () {
            getGalleryImage();
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              Color(0xFF3C3D46)
            )
          ),
          child: image
        )
      )
    );
  }
}