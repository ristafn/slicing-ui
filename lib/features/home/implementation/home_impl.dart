import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/feature/feature.dart';
import '../repository/home_repo.dart';

class HomeImplement extends HomeRepo {
  List<Feature> features({required String body}) {
    final parsed = jsonDecode(body)['data'].cast<Map<String, dynamic>>();

    return parsed.map<Feature>((json) => Feature.fromJson(json)).toList();
  }

  @override
  Future<List<Feature>?> fetchFeature() async {
    try {
      final response = await rootBundle.loadString('assets/json/features.json');

      return features(body: response);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
