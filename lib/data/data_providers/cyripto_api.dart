// @dart=2.9
import 'dart:convert';
import 'package:bithaber/data/models/currency.dart';

import 'package:http/http.dart';

class CyriptoApi {
  Future<List<Currency>> getCurrencies() async {
    final String apiKey = "0964725be921256a863e53755103d293f5af427b";
    final String endPointApi =
        "https://api.nomics.com/v1/currencies/ticker?key=$apiKey&i&interval=1d,30d&convert=&per-page=100&page=1";
 
    Response response = await get(Uri.parse(endPointApi));
    final body = jsonDecode(response.body) as List;

    return body.map((item) => Currency.fromJson(item)).toList();
  }
}
