// @dart=2.9
import 'package:bithaber/data/data_providers/news_api.dart';
import 'package:bithaber/data/models/news.dart';
import 'package:bithaber/presentation/widgets/customListTileNews.dart';
import 'package:bithaber/presentation/widgets/coins_category_buttons.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<String> a = ["Bitcoin", "Ethereum", "Doge"];
  NewsApi client = NewsApi();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: client.getNews(),
        builder:
            (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
          if (snapshot.hasData) {
            List<News> news = snapshot.data;
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) =>
                    customListTileNews(news[index], context));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
