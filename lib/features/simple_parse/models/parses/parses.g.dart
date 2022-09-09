// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parses _$ParsesFromJson(Map<String, dynamic> json) => Parses(
      data: (json['data'] as List<dynamic>)
          .map((e) => Parse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ParsesToJson(Parses instance) => <String, dynamic>{
      'data': instance.data,
    };
