import 'environment.dart';
import 'flavor.dart';
import 'project_config.dart';

class ProjectFlavorLoader {
  static Future<void> initialize({
    required Environment env,
    required Flavor flavor,
  }) async {
    // Set environment and flavor
    ProjectConfig.instance.initialize(env: env, flv: flavor);
  }
}
