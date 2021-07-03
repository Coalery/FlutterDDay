import 'package:shared_preferences/shared_preferences.dart';

import 'item.dart';

Future<List<Item>> readAll() async {
  final prefs = await SharedPreferences.getInstance();
  List<String> data = prefs.getStringList('data') ?? [];
  return data.map((itemStr) => Item.fromJsonString(itemStr)).toList();
}

Future<void> save(List<Item> data) async {
  final prefs = await SharedPreferences.getInstance();
  List<String> jsonStringList = data.map((item) => item.toJsonString()).toList();
  prefs.setStringList('data', jsonStringList);
}
