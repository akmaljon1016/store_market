import 'package:flutter/material.dart';

Widget CardView(String item) {
  return Card(
    margin: EdgeInsets.zero,
    child: Row(
      children: [
        Expanded(
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black)),
          child: Center(child: Text(item)),
        )),
        Expanded(
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black)),
          child: Center(child: Text(item)),
        )),
        Expanded(
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black)),
          child: Center(child: Text(item)),
        )),
        Expanded(
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black)),
          child: Center(child: Text(item)),
        )),
      ],
    ),
  );
}
