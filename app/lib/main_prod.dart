import 'package:app/app.dart';
import 'package:app/boostrap.dart';
import 'package:config/environment.dart';
import 'package:flutter/material.dart';

void main() async {
  boostrap(Environment.prod);
  runApp(const App());
}
