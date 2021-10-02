// @dart=2.9
import 'package:bithaber/data/data_providers/cyripto_api.dart';
import 'package:bithaber/data/models/currency.dart';
import 'package:bithaber/presentation/widgets/list_cyripto_item.dart';
import 'package:flutter/material.dart';

class Coins extends StatefulWidget {
  const Coins({Key key}) : super(key: key);

  @override
  State<Coins> createState() => _CoinsState();
}

class _CoinsState extends State<Coins> {
  CyriptoApi client = CyriptoApi();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: client.getCurrencies(),
      builder: (BuildContext context, AsyncSnapshot<List<Currency>> snapshot) {
        if (snapshot.hasData) {
          List<Currency> currencys = snapshot.data;
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) =>
                  listCryptoItem(currencys[index], context));
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.indigo,
            ),
          );
        }
      },
    );
  }
}
