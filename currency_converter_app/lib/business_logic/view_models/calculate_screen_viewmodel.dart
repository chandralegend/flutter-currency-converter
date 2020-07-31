import 'package:flutter/foundation.dart';
import 'package:currency_converter_app/business_logic/models/currency.dart';
import 'package:currency_converter_app/business_logic/models/rate.dart';
import 'package:currency_converter_app/services/currency/currency_service.dart';
import 'package:currency_converter_app/business_logic/utils/iso_data.dart';
import 'package:currency_converter_app/services/service_locator.dart';

class CalculateScreenViewModel extends ChangeNotifier {
  final CurrencyService _currencyService = serviceLocator<CurrencyService>();

  CurrencyPresentation _baseCurrency = defaultBaseCurrency;
  List<CurrencyPresentation> _quoteCurrencies = [];
  List<Rate> _rates = [];

  static final CurrencyPresentation defaultBaseCurrency = CurrencyPresentation(
      flag: '', alphabeticCode: '', longName: '', amount: '');

  void LoadData() async {
    await _loadCurrencies();
    _rates = await _currencyService.getAllExchangeRates(
        base: _baseCurrency.alphabeticCode);
    notifyListeners();
  }

  Future<void> _loadCurrencies() async {
    final currencies = await _currencyService.getFavoriteCurrencies();
    _baseCurrency = _loadBaseCurrency(currencies);
    _quoteCurrencies = _loadQuoteCurrencies(currencies);
  }

  CurrencyPresentation _loadBaseCurrency(List<Currency> currencies) {}

  List<CurrencyPresentation> _loadQuoteCurrencies(List<Currency> currencies) {}
}

class CurrencyPresentation {
  final String flag;
  final String alphabeticCode;
  final String longName;
  String amount;

  CurrencyPresentation(
      {this.flag, this.alphabeticCode, this.amount, this.longName});
}
