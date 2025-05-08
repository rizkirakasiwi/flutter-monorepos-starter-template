enum Flavor { free, paid, internal }

extension FlavorX on Flavor {
  String get name => toString().split('.').last;
}
