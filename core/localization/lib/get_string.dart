import 'package:flutter/material.dart';
import 'package:localization/app_localizations.dart';

extension GetString on BuildContext {
  String getString(String key) {
    return AppLocalizations.of(this)?.getString(key) ?? "Null";
  }
}
