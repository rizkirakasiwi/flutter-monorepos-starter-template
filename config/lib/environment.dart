enum Environment { dev, prod }

extension EnvironmentX on Environment {
  String get name => toString().split('.').last;
  bool get isDev => this == Environment.dev;
  bool get isProd => this == Environment.prod;
}
