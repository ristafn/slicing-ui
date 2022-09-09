import '../models/feature/feature.dart';

abstract class HomeRepo {
  Future<List<Feature>?> fetchFeature();
}