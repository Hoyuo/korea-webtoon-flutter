// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../webtoon_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WebtoonDetailModel _$WebtoonDetailModelFromJson(
  Map<String, dynamic> json,
) => _WebtoonDetailModel(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  provider: json['provider'] as String? ?? '',
  updateDays:
      (json['updateDays'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  url: json['url'] as String? ?? '',
  thumbnail:
      (json['thumbnail'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isEnd: json['isEnd'] as bool? ?? false,
  isFree: json['isFree'] as bool? ?? false,
  isUpdated: json['isUpdated'] as bool? ?? false,
  ageGrade: (json['ageGrade'] as num?)?.toInt() ?? 0,
  freeWaitHour: (json['freeWaitHour'] as num?)?.toInt() ?? null,
  authors:
      (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$WebtoonDetailModelToJson(_WebtoonDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'provider': instance.provider,
      'updateDays': instance.updateDays,
      'url': instance.url,
      'thumbnail': instance.thumbnail,
      'isEnd': instance.isEnd,
      'isFree': instance.isFree,
      'isUpdated': instance.isUpdated,
      'ageGrade': instance.ageGrade,
      'freeWaitHour': instance.freeWaitHour,
      'authors': instance.authors,
    };
