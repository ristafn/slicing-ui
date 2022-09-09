import '../models/parse/parse.dart';

abstract class ParseRepository {
  Future<List<Parse>> fetch();
}
