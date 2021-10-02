// @dart=2.9
import 'dart:convert';
import 'package:bithaber/data/models/news.dart';
import 'package:http/http.dart';

class NewsApi {
  final String apikey = "2fb3acbeb8c140469269507e696b8906";
  String endPointUrl =
      "https://newsapi.org/v2/everything?q=btc&apiKey=2fb3acbeb8c140469269507e696b8906";

  Future<List<News>> getNews() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];

      List<News> news =
          body.map((dynamic item) => News.fromJson(item)).toList();
      return news;
    } else {
      throw ("Cant get news...");
    }
  }
}
