// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../webtoon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WebtoonModel _$WebtoonModelFromJson(Map<String, dynamic> json) =>
    _WebtoonModel(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      thumbnail:
          (json['thumbnail'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$WebtoonModelToJson(_WebtoonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
    };
