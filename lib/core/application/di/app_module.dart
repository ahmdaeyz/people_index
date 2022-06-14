import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/data/config/app_config.dart';
import 'package:people_index/core/data/interceptors/api_key_appender_interceptor.dart';
import 'package:people_index/core/data/interceptors/language_appender_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  Dio dio(AppConfig appConfig) {
    final aDio = Dio(
      BaseOptions(
        baseUrl: appConfig.apiBaseUrl,
        connectTimeout: 30000,
        receiveTimeout: 30000,
        sendTimeout: 30000,
        followRedirects: true,
      ),
    );

    aDio.interceptors
        .addAll([ApiKeyAppenderInterceptor(), LanguageAppenderInterceptor()]);
    if (kDebugMode) {
      aDio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (log) => Logger(
            printer: PrettyPrinter(),
          ).v(log.toString()),
        ),
      );
    }
    return aDio;
  }
}
