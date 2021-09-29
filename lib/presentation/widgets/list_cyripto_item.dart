import 'package:flutter/material.dart';
import 'package:bithaber/data/models/currency.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget listCryptoItem(Currency cur) {
  double precent = cur.oneDayChange;
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.network(
            cur.logoUrl.toString(),
            placeholderBuilder: (context) =>
                CircularProgressIndicator(color: Colors.deepOrange),
            height: 50.0,
          ),
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
                  cur.price.toString(),
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
                precent >= 0 ? '+ $precent %' : '$precent %',
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
