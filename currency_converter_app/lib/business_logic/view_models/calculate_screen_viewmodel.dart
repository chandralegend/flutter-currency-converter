import 'package:flutter/foundation.dart';
import 'package:currency_converter_app/business_logic/models/currency.dart';
import 'package:currency_converter_app/business_logic/models/rate.dart';
import 'package:currency_converter_app/services/currency/currency_service.dart';
import 'package:currency_converter_app/business_logic/utils/iso_data.dart';
import 'package:currency_converter_app/services/service_locator.dart';

class CalculateScreenViewModel extends ChangeNotifier {
  final CurrencyService _currencyService = serviceLocator<CurrencyService>();
}
