// @dart=2.9
import 'package:bithaber/data/models/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildLogo(Currency currency, BuildContext context,) {
  final isSvg = currency.logoUrl.endsWith('.svg');

  return CircleAvatar(
    radius: 30,
    backgroundColor: Colors.transparent,  
    child: isSvg
        ? SvgPicture.network(
            currency.logoUrl.toString(),
            placeholderBuilder: (context) =>
                CircularProgressIndicator(color: Colors.indigo),
            height: 50.0,
          )
        : Image.network(
            currency.logoUrl.toString(),
            height: 50.0,
          ),
  );
}
