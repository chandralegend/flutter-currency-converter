class Currency {
  final String isoCode;
  double amount;

  Currency(this.isoCode, {this.amount = 0}) {
    if (isoCode.length != 3) {
      throw ArgumentError('ISO Length should be 3');
    }
    if (amount < 0) throw ArgumentError("Amount can't be negative");
  }
}
