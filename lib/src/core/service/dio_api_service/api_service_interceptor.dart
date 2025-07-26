import 'package:dio/dio.dart';
import 'package:iroid_application/src/config/app_config.dart';
import 'package:iroid_application/src/core/service/env_service/env_service.dart';

class DioServiceInterceptor extends Interceptor {
  DioServiceInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer ${EnvService.getApiToken()}';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {}
}
