class Rate {
  final String baseCurrency;
  final String quoteCurrency;

  final double exchangeRate;

  Rate({this.baseCurrency, this.quoteCurrency, this.exchangeRate}) {
    if (baseCurrency.length != 3 || quoteCurrency.length != 3)
      throw ArgumentError("The ISO code must have a lenght of 3.");
  }

  factory Rate.fromJson(Map<String, dynamic> json) {
    return Rate(
        baseCurrency: json['baseCurrency'],
        quoteCurrency: json['quoteCurrency'],
        exchangeRate: json['exchangeRate']);
  }
}
