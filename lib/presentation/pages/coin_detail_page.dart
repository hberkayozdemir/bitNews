//@dart=2.9
import 'package:bithaber/data/models/currency.dart';
import 'package:bithaber/presentation/widgets/logoBuild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinDetailPage extends StatelessWidget {
  final Currency currency;

  CoinDetailPage({this.currency});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currency.id),
      ),
      body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  buildLogo(currency, context),
                  Container(
                    padding: EdgeInsets.all(9.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      currency.id.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                      child: Text(
                    currency.name.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
            ],
          )),
    );
  }
}
