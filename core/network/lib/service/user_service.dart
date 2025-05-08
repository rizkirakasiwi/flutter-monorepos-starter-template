import 'package:network/models/network_response.dart';

abstract class UserService {
  Future<NetworkResponse> getProfile();
}
