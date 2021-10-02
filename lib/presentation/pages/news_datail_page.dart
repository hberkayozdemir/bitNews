//@dart=2.9
import 'package:bithaber/data/models/news.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  final News news;

  NewsDetails({this.news});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(news.author),
      ),
      body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(news.urlToImage),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      news.source.name,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                      child: Text(
                    news.title.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                      news.content +
                          news.content +
                          news.content +
                          news.content +
                          news.content +
                          news.content +
                          news.content +
                          news.content,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                ),
              )
            ],
          )),
    );
  }
}
