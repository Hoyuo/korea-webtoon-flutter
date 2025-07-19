import 'package:freezed_annotation/freezed_annotation.dart';

part '.generated/webtoon_model.freezed.dart';
part '.generated/webtoon_model.g.dart';

/*
{
  id: "naver_812907",
  title: "1825일",
  thumbnail: [
    "https://image-comic.pstatic.net/webtoon/812907/thumbnail/thumbnail_IMAG21_4cf453b2-af77-4519-8adf-629885f4ff76.jpg"
  ]
}
*/

@freezed
abstract class WebtoonModel with _$WebtoonModel {
  const factory WebtoonModel({
    @Default('') final String id,
    @Default('') final String title,
    @Default([]) final List<String> thumbnail,
  }) = _WebtoonModel;

  factory WebtoonModel.fromJson(Map<String, dynamic> json) =>
      _$WebtoonModelFromJson(json);
}
