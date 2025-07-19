import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:webtoon/model/webtoon_detail_model.dart';
import 'package:webtoon/model/webtoon_episode_model.dart';
import 'package:webtoon/model/webtoon_model.dart';

class ApiService {
  static final dio = Dio();
  static const String baseUrl = "https://korea-webtoon-api.fly.dev";

  // https://korea-webtoon-api.fly.dev/webtoons?updateDay=SAT&provider=KAKAO
  // https://korea-webtoon-api.fly.dev/webtoons/kakao_3090
  // https://korea-webtoon-api.fly.dev/webtoons/kakao_3090/episodes

  static Future<List<WebtoonModel>> getWebtoonList({
    required String provider,
    String? dayOfTheWeek,
  }) async {
    final response = await dio.get(
      "$baseUrl/webtoons",
      queryParameters: {
        "provider": provider,
        if (dayOfTheWeek != null) "updateDay": dayOfTheWeek,
      },
    );
    if (response.statusCode == 200) {
      debugPrint('getWebtoonList ${response.data}');
      final List<dynamic> webtoons = response.data['items'];
      return webtoons.map((webtoon) => WebtoonModel.fromJson(webtoon)).toList();
    }
    throw Exception("Fail to load data");
  }

  static Future<WebtoonDetailModel> getWebtoonDetail(String id) async {
    final response = await dio.get("$baseUrl/webtoons/$id");
    if (response.statusCode == 200) {
      debugPrint(
        'getWebtoonDetail ${WebtoonDetailModel.fromJson(response.data)}',
      );
      return WebtoonDetailModel.fromJson(response.data);
    }
    throw Exception("Fail to load data");
  }

  static Future<List<WebtoonEpisodeModel>> getWebtoonEpisode(String id) async {
    List<WebtoonEpisodeModel> webtoonEpisodeList = [];
    final response = await dio.get("$baseUrl/webtoons/$id/episodes");
    if (response.statusCode == 200) {
      debugPrint('getWebtoonEpisode ${response.data}');
      final List<dynamic> webtoonEpisodes = response.data['items'];
      for (var webtoonEpisode in webtoonEpisodes) {
        webtoonEpisodeList.add(WebtoonEpisodeModel.fromJson(webtoonEpisode));
      }
      return webtoonEpisodeList;
    }
    throw Exception("Fail to load data");
  }
}
