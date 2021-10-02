// @dart=2.9

class Currency {
  List<String> currencyList;
  String id;
  String logoUrl;
  String name;
  double price;
  double oneDayChange;

  Currency({this.id, this.logoUrl, this.name, this.price, this.oneDayChange});

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      id: json['id'] as String,
      name: json['name'] as String,
      logoUrl: json['logo_url'] as String,
      price: double.parse(json['price']),
      oneDayChange: double.parse(json['1d']['price_change_pct']),
    );
  }
}
