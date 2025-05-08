import 'package:dio/dio.dart';

abstract class HttpClient {
  Future<Response> get(String path, {Map<String, dynamic>? headers});
  Future<Response> post(
    String path, {
    dynamic body,
    Map<String, dynamic>? headers,
  });
  // Add other methods (put, delete, etc.) as needed.
}
