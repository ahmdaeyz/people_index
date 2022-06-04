import 'package:dio/dio.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/data/config/app_config.dart';
import 'package:people_index/core/data/constants/constants.dart';

class ApiKeyAppenderInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final appConfig = getIt<AppConfig>();
    options.queryParameters
        .addEntries([MapEntry<String, String>(kApiKey, appConfig.apiKey)]);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
