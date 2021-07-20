import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

Future<List<dynamic>> loadJson(String location, String index) async {
  List data = [];

  final getData = await rootBundle.loadString(location);
  final mapData = await json.decode(getData);
  data = mapData[index];
  return data;
}