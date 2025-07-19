// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../webtoon_episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WebtoonEpisodeModel _$WebtoonEpisodeModelFromJson(Map<String, dynamic> json) =>
    _WebtoonEpisodeModel(
      title: json['title'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      url: json['url'] as String? ?? '',
      uploadDate: json['uploadDate'] as String? ?? '',
      waitForFree: json['waitForFree'] as bool? ?? false,
    );

Map<String, dynamic> _$WebtoonEpisodeModelToJson(
  _WebtoonEpisodeModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'thumbnail': instance.thumbnail,
  'url': instance.url,
  'uploadDate': instance.uploadDate,
  'waitForFree': instance.waitForFree,
};
