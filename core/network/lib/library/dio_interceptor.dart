import 'package:dio/dio.dart';
import 'package:network/interceptors/logger.dart';
class DioInterceptor extends Interceptor {
  final AppLogger logger;

  DioInterceptor(this.logger);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.debug('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.debug(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.error(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
      err,
    );
    super.onError(err, handler);
  }
}
