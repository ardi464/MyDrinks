import 'dart:async';
import 'dart:core';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'package:my_drinks/models/model.dart';

class Api {
  Client http = Client();

  static final String _url = 'https://www.thecocktaildb.com/api/json/v1/1/';

  Future<DrinksData> getList() async {
    final res = await http.get(_url + 'search.php?s=');
    if (res.statusCode == 200) {
      return DrinksData.fromJson(json.decode(res.body));
    } else {
      throw Exception('Failed to Load');
    }
  }

  Future<DrinksData> getDetail(String strId) async {
    final res = await http.get(_url + 'lookup.php?i=$strId');
    if (res.statusCode == 200) {
      return DrinksData.fromJson(json.decode(res.body));
    } else {
      throw Exception('Failed to Load');
    }
  }

  Future<DrinksData> getSeacrh(String strDrink) async {
    final res = await http.get(_url + 'search.php?i=$strDrink');
    if (res.statusCode == 200) {
      return DrinksData.fromJson(json.decode(res.body));
    } else {
      throw Exception('Failed to Load');
    }
  }

  
}
