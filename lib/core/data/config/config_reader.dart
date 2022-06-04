import 'dart:convert';

import 'package:flutter/services.dart';

abstract class ConfigReader {
  static Map<String, dynamic> _config = Map<String, dynamic>.identity();

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/app_config.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String get apiKey => _config['apiKey'].toString();

  static String get apiBaseUrl => _config['apiBaseUrl'].toString();

  static String get imagesBaseUrl => _config['imagesBaseUrl'].toString();
}
