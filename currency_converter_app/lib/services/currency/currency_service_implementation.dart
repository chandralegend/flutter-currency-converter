import 'package:currency_converter_app/business_logic/models/currency.dart';
import 'package:currency_converter_app/business_logic/models/rate.dart';
import 'package:currency_converter_app/services/storage/storage_service.dart';
import 'package:currency_converter_app/services/web_api/web_api.dart';
import 'package:currency_converter_app/services/service_locator.dart';

import 'currency_service.dart';

class CurrencyServiceImpl implements CurrencyService {
  WebApi _webapi = serviceLocator<WebApi>();
  StorageService _storageService = serviceLocator<StorageService>();

  static final defaultFavorites = [
    Currency('EUR'),
    Currency('USD'),
    Currency('LKR')
  ];

  @override
  
}
