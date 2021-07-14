import 'dart:io';

import 'package:flutter/material.dart';

import '../item.dart';

class DDayUnit extends StatelessWidget {
  final Item item;

  DDayUnit({
    required this.item
  });

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    Duration diff = item.date.difference(now);
    int days = diff.inDays + 1;

    String dateString = 'D-$days';

    DecorationImage? image;
    if(item.imagePath != null) {
      image = DecorationImage(
        image: FileImage(File(item.imagePath!)),
        fit: BoxFit.cover
      );
    }

    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0x33D4D4D4)),
        image: image
      ),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x00000000),
                Color(0xE0000000),
              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  dateString,
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                )
              ]
            )
          )
        )
      )
    );
  }
}