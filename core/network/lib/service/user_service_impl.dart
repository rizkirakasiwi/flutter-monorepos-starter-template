import 'package:network/models/network_response.dart';
import 'package:network/client/http_client.dart';

import 'user_service.dart';

class UserServiceImpl implements UserService{
  final HttpClient _httpClient;

  const UserServiceImpl(this._httpClient);

  static const String profile = "/profile";

  @override
  Future<NetworkResponse> getProfile() async {
    final result = await _httpClient.get(profile);
    return NetworkResponse(
      statusCode: result.statusCode,
      statusMessage: result.statusMessage,
      value: result.data
    );
  }
}