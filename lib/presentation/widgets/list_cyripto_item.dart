import 'package:bithaber/presentation/pages/coin_detail_page.dart';
import 'package:bithaber/presentation/widgets/logoBuild.dart';
import 'package:flutter/material.dart';
import 'package:bithaber/data/models/currency.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget listCryptoItem(Currency cur, BuildContext context) {
  double precent = cur.oneDayChange * 100;

  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CoinDetailPage(currency: cur)));
    },
    child: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildLogo(cur, context),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    cur.id.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    cur.price.toStringAsFixed(5),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  cur.name.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  precent >= 0
                      ? '+ ${precent.toStringAsFixed(2)} %'
                      : '${precent.toStringAsFixed(2)}%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: precent >= 0 ? Colors.green : Colors.pink,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget card(
    {double width = double.infinity, double padding = 20, Widget? child}) {
  return Container(
    width: width,
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: child,
  );
}
