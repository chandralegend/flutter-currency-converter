import 'package:currency_converter_app/business_logic/models/currency.dart';
import 'package:currency_converter_app/business_logic/models/rate.dart';

abstract class StorageService {
  Future cacheExchangeRateData(List<Rate> data);
  Future<List<Rate>> getExchangeRateData();
  Future<List<Currency>> getFavoriteCurrencies();
  Future saveFavoriteCurrencies(List<Currency> data);
  Future<bool> isExpiredCache();
}