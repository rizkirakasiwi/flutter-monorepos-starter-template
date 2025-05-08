import 'env_config.dart';
import 'environment.dart';
import 'flavor.dart';

class ProjectConfig {
  static final ProjectConfig _instance = ProjectConfig._();

  late final Environment environment;
  late final Flavor flavor;

  ProjectConfig._();

  static ProjectConfig get instance => _instance;

  void initialize({required Environment env, required Flavor flv}) {
    environment = env;
    flavor = flv;
  }

  String get baseUrl =>
      environment == Environment.dev ? EnvDev.baseUrl : EnvProd.baseUrl;
}
