import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/feature/feature.dart';
import '../repository/home_repo.dart';

class HomeImplement extends HomeRepo {
  @override
  Future<List<Feature>?> fetchFeature() async {
    try {
      final response = await rootBundle.loadString('assets/json/features.json');
      final parsed = jsonDecode(response)['data'].cast<Map<String, dynamic>>();

      return parsed.map<Feature>((json) => Feature.fromJson(json)).toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
