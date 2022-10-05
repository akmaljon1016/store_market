import 'package:flutter/material.dart';

import 'model/tovar.dart';

Widget CardView(Datum item) {
  return Card(
    margin: EdgeInsets.zero,
    child: Row(
      children: [
        Expanded(
          flex: 2,
            child: Container(
          height: 40.0,
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black)),
          child: Center(child: Text(item.dori)),
        )),
        Expanded(
          flex: 1,
            child: Container(
          height: 40.0,
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black)),
          child: Center(child: Text(item.olishNarx.toString())),
        )),
        Expanded(
          flex: 1,
            child: Container(
          height: 40.0,
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black)),
          child: Center(child: Text(item.foiz.toString())),
        )),
        Expanded(
          flex: 1,
            child: Container(
          height: 40.0,
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black)),
          child: Center(child: Text(item.sotishNarx.toString())),
        )),
      ],
    ),
  );
}
