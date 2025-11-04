import 'package:flutter/material.dart';
import 'package:github_search_app/settings/injection.dart';
import 'package:github_search_app/presentation/app/app.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
