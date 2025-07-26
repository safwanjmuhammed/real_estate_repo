import 'package:dio/dio.dart';
import 'package:iroid_application/src/config/app_config.dart';

class DioServiceInterceptor extends Interceptor {
  DioServiceInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer ${AppConfig.accessToken}';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {}
}
