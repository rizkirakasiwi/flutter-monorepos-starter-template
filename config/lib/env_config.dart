import 'package:envied/envied.dart';

part 'env_config.g.dart';

@Envied(path: '.env.dev', obfuscate: true) // Overwritten at build time
abstract class EnvDev {
  @EnviedField(varName: 'BASE_URL')
  static final String baseUrl = _EnvDev.baseUrl;
}

@Envied(path: '.env.prod', obfuscate: true) // Overwritten at build time
abstract class EnvProd {
  @EnviedField(varName: 'BASE_URL')
  static final String baseUrl = _EnvProd.baseUrl;
}
