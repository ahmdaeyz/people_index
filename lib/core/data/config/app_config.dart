import 'package:injectable/injectable.dart';

import 'package:people_index/core/data/config/config_reader.dart';

@lazySingleton
class AppConfig {
  String get apiKey => ConfigReader.apiKey;

  String get apiBaseUrl => ConfigReader.apiBaseUrl;

  String get imagesBaseUrl=> ConfigReader.imagesBaseUrl;
}
