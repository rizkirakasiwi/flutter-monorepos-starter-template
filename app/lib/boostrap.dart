import 'package:app/app_di.dart';
import 'package:config/environment.dart';
import 'package:config/flavor.dart';
import 'package:config/project_flavor_loader.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

boostrap(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  //  Init flavor and environment
  await ProjectFlavorLoader.initialize(env: env, flavor: Flavor.internal);

  // init get_it
  final getIt = GetIt.instance;
  getIt.injectAll();
}
