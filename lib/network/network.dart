import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:store_market/model/tovar.dart';

class Network {
  List tovarlar = [];

  Future<Tovar> getItems(int page) async {
    var url = "http://umidhoja.ga/api/tovarlar?page=${page}";
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      tovarlar=tovarlar+tovarFromJson(response.body).data;
      return tovarFromJson(response.body);
    } else {
      throw Exception("Error");
    }
  }
}
