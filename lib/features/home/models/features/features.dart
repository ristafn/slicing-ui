import 'package:flutter_application_1/features/home/models/feature/feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'features.g.dart';

@JsonSerializable()
class Features {
  const Features({
    required this.status,
    required this.data,
  });

  final String status;
  final List<Feature> data;

  factory Features.fromJson(Map<String, dynamic> json) =>
      _$FeaturesFromJson(json);
}
