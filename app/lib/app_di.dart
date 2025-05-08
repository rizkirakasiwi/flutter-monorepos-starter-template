import 'package:network/di/network_di.dart';
import 'package:shared/shared.dart';

extension AppDi on GetIt {
  void injectAll() {
    injectNetwork();
  }
}
