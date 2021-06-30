import 'dart:io';

import 'package:flutter/material.dart';

import '../colors.dart';
import '../item.dart';

class DDayUnit extends StatelessWidget {
  final Item item;

  DDayUnit({
    required this.item
  });

  @override
  Widget build(BuildContext context) {
    dynamic imageProvider;

    if(item.imagePath == null) {
      imageProvider = AssetImage("assets/images/DummyImage1.png");
    } else {
      imageProvider = FileImage(File(item.imagePath!));
    }

    DateTime now = DateTime.now();
    Duration diff = item.date.difference(now);
    int days = diff.inDays + 1;

    String dateString;

    if(days <= 0) {
      days = days.abs();
      dateString = 'D+$days';
    } else {
      dateString = 'D-$days';
    }

    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: UsedColor.line),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
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
                UsedColor.gradationStart,
                UsedColor.gradationEnd,
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
                    color: UsedColor.text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  dateString,
                  style: TextStyle(
                    color: UsedColor.text,
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