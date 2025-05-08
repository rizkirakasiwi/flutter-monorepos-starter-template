import 'package:network/client/http_client.dart';
import 'package:dio/dio.dart';
import 'package:config/config.dart';

class DioClient implements HttpClient {
  final Dio _dio;

  DioClient({
    List<Interceptor>? interceptors,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: ProjectConfig.instance.baseUrl,
            headers: {'Content-Type': 'application/json'},
            connectTimeout: const Duration(seconds: 10),
          ),
        ) {
    if (interceptors != null) {
      _dio.interceptors.addAll(interceptors);
    }
  }

  @override
  Future<Response> get(String path, {Map<String, dynamic>? headers}) async {
    return _dio.get(path, options: Options(headers: headers));
  }

  @override
  Future<Response> post(String path, {body, Map<String, dynamic>? headers}) {
    return _dio.post(path, data: body, options: Options(headers: headers));
  }
}
