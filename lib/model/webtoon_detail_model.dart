/*
{
  id: "naver_792651",
  title: "99강화나무몽둥이",
  provider: "NAVER",
  updateDays: [
    "SAT"
  ],
  url: "https://comic.naver.com/webtoon/list?titleId=792651",
  thumbnail: [
    "https://image-comic.pstatic.net/webtoon/792651/thumbnail/thumbnail_IMAG21_218f18ef-7f68-4d6a-972c-686a3e9f6138.jpg"
  ],
  isEnd: false,
  isFree: true,
  isUpdated: false,
  ageGrade: 0,
  freeWaitHour: null,
  authors: [
    "홍실",
    "지페리"
  ]
}
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part '.generated/webtoon_detail_model.freezed.dart';
part '.generated/webtoon_detail_model.g.dart';

@freezed
abstract class WebtoonDetailModel with _$WebtoonDetailModel {
  const factory WebtoonDetailModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String provider,
    @Default([]) List<String> updateDays,
    @Default('') String url,
    @Default([]) List<String> thumbnail,
    @Default(false) bool isEnd,
    @Default(false) bool isFree,
    @Default(false) bool isUpdated,
    @Default(0) int ageGrade,
    @Default(null) int? freeWaitHour,
    @Default([]) List<String> authors,
  }) = _WebtoonDetailModel;

  factory WebtoonDetailModel.fromJson(Map<String, dynamic> json) =>
      _$WebtoonDetailModelFromJson(json);
}
