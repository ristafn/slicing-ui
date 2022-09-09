import 'package:flutter_application_1/features/simple_parse/models/parse/parse.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parses.g.dart';

@JsonSerializable()
class Parses {
  const Parses({
    required this.data,
  });

  final List<Parse> data;

  factory Parses.fromJson(Map<String, dynamic> json) => _$ParsesFromJson(json);
}
