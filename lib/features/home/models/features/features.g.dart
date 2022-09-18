// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Features _$FeaturesFromJson(Map<String, dynamic> json) => Features(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeaturesToJson(Features instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
