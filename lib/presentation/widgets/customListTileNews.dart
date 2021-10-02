import 'package:bithaber/presentation/pages/news_datail_page.dart';
import 'package:flutter/material.dart';
import 'package:bithaber/data/models/news.dart';

Widget customListTileNews(News news, BuildContext context) {
  return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsDetails(
                      news: news,
                    )));
      },
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 3.0),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(news.urlToImage), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(news.source.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            SizedBox(height: 8.0),
            Text(news.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0))
          ],
        ),
      ));
}
