import 'package:lab5_task3/models/user_class.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<List<User>> fetchUsers() async {
  final String response = await rootBundle.loadString('assets/data/data.json');

  var delay = await Future.delayed(const Duration(seconds: 2));

  return (json.decode(response) as List)
      .map((data) => User.fromJson(data))
      .toList();
}
