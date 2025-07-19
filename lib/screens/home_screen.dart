import 'package:flutter/material.dart';
import 'package:webtoon/model/webtoon_model.dart';
import 'package:webtoon/services/api_service.dart';
import 'package:webtoon/widget/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> list = ApiService.getWebtoonList(
    provider: 'NAVER',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('오늘의 웹툰'),
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          fontFamily: 'Malgun Gothic',
        ),
      ),
      body: FutureBuilder(
        future: list,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = snapshot.data!;
            return buildListView(list);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  ListView buildListView(List<WebtoonModel> list) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(10),
      itemCount: list.length,
      itemBuilder: (context, index) {
        var item = list[index];
        return Webtoon(item: item);
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: MediaQuery.of(context).size.width * 0.02);
      },
    );
  }
}
