import 'package:dio/dio.dart';
import 'package:network/library/dio_interceptor.dart';
import 'package:shared/shared.dart';
import 'package:network/client/http_client.dart';
import 'package:network/library/dio_client.dart';
import 'package:network/interceptors/logger.dart';
import 'package:network/library/console_logger.dart';
import 'package:network/service/user_service.dart';
import 'package:network/service/user_service_impl.dart';

extension NetworkDi on GetIt {
  void injectNetwork() {
    registerSingleton<AppLogger>(ConsoleLogger());
    registerSingleton<Interceptor>(DioInterceptor(get<AppLogger>()));
    registerSingleton<HttpClient>(
      DioClient(interceptors: [get<Interceptor>()]),
    );
    registerSingleton<UserService>(UserServiceImpl(get<HttpClient>()));
  }
}
