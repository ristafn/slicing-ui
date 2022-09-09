import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/parse/parse.dart';
import '../repository/parse_repository.dart';

class ParseImplementation extends ParseRepository {
  @override
  Future<List<Parse>> fetch() async {
    final response = await rootBundle.loadString('assets/json/parse.json');
    final parsed = jsonDecode(response)['data'].cast<Map<String, dynamic>>();

    return parsed.map<Parse>((json) => Parse.fromJson(json)).toList();
  }
}
