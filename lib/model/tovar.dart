// To parse this JSON data, do
//
//     final tovar = tovarFromJson(jsonString);

import 'dart:convert';

import 'datum.dart';

Tovar tovarFromJson(String str) => Tovar.fromJson(json.decode(str));

String tovarToJson(Tovar data) => json.encode(data.toJson());

class Tovar {
  Tovar({
    required this.error,
     this.totalPages,
    required this.data,
  });

  bool error;
  int? totalPages;
  List<Datum> data;

  factory Tovar.fromJson(Map<String, dynamic> json) => Tovar(
        error: json["error"],
        totalPages: json["totalPages"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "totalPages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
