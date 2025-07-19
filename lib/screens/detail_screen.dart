import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webtoon/model/webtoon_detail_model.dart';
import 'package:webtoon/model/webtoon_episode_model.dart';
import 'package:webtoon/model/webtoon_model.dart';
import 'package:webtoon/services/api_service.dart';
import 'package:webtoon/widget/webtoon_episode.dart';

class DetailScreen extends StatefulWidget {
  WebtoonModel item;

  DetailScreen({super.key, required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> detailModel;
  late Future<List<WebtoonEpisodeModel>> list;
  bool isLiked = false;

  late SharedPreferences prefs;

  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    final likedWebtoons = prefs.getStringList('liked_webtoon');
    if (likedWebtoons != null) {
      if (likedWebtoons.contains(widget.item.id)) {
        setState(() {
          isLiked = true;
        });
      }
    } else {
      await prefs.setStringList('liked_webtoon', []);
    }
  }

  @override
  void initState() {
    super.initState();
    detailModel = ApiService.getWebtoonDetail(widget.item.id);
    list = ApiService.getWebtoonEpisode(widget.item.id);
    initPrefs();
  }

  ListView buildListView(List<WebtoonEpisodeModel> list) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      scrollDirection: Axis.vertical,
      itemCount: list.length,
      itemBuilder: (context, index) {
        var item = list[index];
        debugPrint('$item');
        return WebtoonEpisode(webtoonId: widget.item.id, item: item);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
    );
  }

  favoriteClicked() async {
    List<String> likedWebtoons = prefs.getStringList('liked_webtoon')!;
    if (isLiked) {
      likedWebtoons.remove(widget.item.id);
    } else {
      likedWebtoons.add(widget.item.id);
    }
    await prefs.setStringList('liked_webtoon', likedWebtoons);

    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.item.title),
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          fontFamily: 'Malgun Gothic',
        ),
        actions: [
          IconButton(
            onPressed: favoriteClicked,
            icon: Icon(isLiked ? Icons.favorite : Icons.favorite_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.item.id,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: CachedNetworkImage(
                        imageUrl: widget.item.thumbnail[0],
                        httpHeaders: const {
                          "User-Agent":
                              "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36",
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              FutureBuilder(
                future: detailModel,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var detail = snapshot.data!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          detail.title,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "${detail.authors.join(", ")} / ${detail.ageGrade}",
                        ),
                      ],
                    );
                  }
                  return const Text("Load");
                },
              ),
              SizedBox(height: 10),
              FutureBuilder(
                future: list,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var list = snapshot.data!;
                    return buildListView(list);
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
