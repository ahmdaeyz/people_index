import 'package:dio/dio.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/data/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageAppenderInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final prefs = getIt<SharedPreferences>();
    final currentLanguage =
        prefs.getString(kLocaleKey)?.split('_').first ?? 'en';
    options.queryParameters
        .addEntries([MapEntry<String, String>(kLanguage, currentLanguage)]);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
