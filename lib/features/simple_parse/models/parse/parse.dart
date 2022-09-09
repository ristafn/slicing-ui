import 'package:json_annotation/json_annotation.dart';

part 'parse.g.dart';

@JsonSerializable()
class Parse {
  const Parse({
    required this.name,
    required this.gender,
  });

  final String name;
  final String gender;

  factory Parse.fromJson(Map<String, dynamic> json) => _$ParseFromJson(json);
}
