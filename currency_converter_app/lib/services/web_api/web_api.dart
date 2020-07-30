import 'package:currency_converter_app/business_logic/models/rate.dart';

abstract class WebApi {
  Future<List<Rate>> fetchExchangeRates();
}