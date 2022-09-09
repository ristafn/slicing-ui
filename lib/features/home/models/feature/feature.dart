import 'package:json_annotation/json_annotation.dart';

part 'feature.g.dart';

@JsonSerializable()
class Feature {
  const Feature({
    required this.title,
    required this.createdAt,
  });

  final String title;
  @JsonKey(name: 'created_at')
  final String createdAt;

  factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}
