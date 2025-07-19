/*
{
  title: "2부 73화. 공허와 혼돈 (1)",
  thumbnail: "https://image-comic.pstatic.net/webtoon/792651/160/thumbnail_202x120_90e0b221-1200-4545-83b9-920c9d35d53c.jpg",
  url: "https://comic.naver.com/webtoon/detail?titleId=792651&no=160&week=sat",
  uploadDate: "25.07.18"
  waitForFree: false
},
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part '.generated/webtoon_episode_model.freezed.dart';
part '.generated/webtoon_episode_model.g.dart';

@freezed
abstract class WebtoonEpisodeModel with _$WebtoonEpisodeModel {
  const factory WebtoonEpisodeModel({
    @Default('') final String title,
    @Default('') final String thumbnail,
    @Default('') final String url,
    @Default('') final String uploadDate,
    @Default(false) final bool waitForFree,
  }) = _WebtoonEpisodeModel;

  factory WebtoonEpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$WebtoonEpisodeModelFromJson(json);
}
