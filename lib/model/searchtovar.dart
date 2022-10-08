// To parse this JSON data, do
//
//     final search = searchFromJson(jsonString);

import 'dart:convert';

import 'datum.dart';

Search searchFromJson(String str) => Search.fromJson(json.decode(str));

String searchToJson(Search data) => json.encode(data.toJson());

class Search {
  Search({
    required this.error,
    required this.totalPages,
    required this.data,
  });

  bool error;
  int totalPages;
  List<Datum> data;

  factory Search.fromJson(Map<String, dynamic> json) => Search(
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


enum BNomi { AVTO_ZAPCHAST }

final bNomiValues = EnumValues({
  "AvtoZapchast": BNomi.AVTO_ZAPCHAST
});

enum KNomi { EMPTY, K_NOMI }

final kNomiValues = EnumValues({
  "буфер сехлар": KNomi.EMPTY,
  "Буфер Орг": KNomi.K_NOMI
});

class EnumValues<T> {
  Map<String, T> map;
 late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
