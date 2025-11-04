import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/presentation/app/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Search App',
      theme: AppTheme.darkTheme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
