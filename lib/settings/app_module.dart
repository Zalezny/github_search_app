import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:github_search_app/data/datasources/github_repo_api_service.dart';
import 'package:github_search_app/data/datasources/github_users_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class AppModule {
  @lazySingleton
  Logger logger() => Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 50,
      colors: true,
      printEmojis: true,
    ),
  );

  @lazySingleton
  Dio dio(Logger logger) {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.github.com',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {'Accept': 'application/vnd.github.v3+json'},
      ),
    );
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          error: true,
          logPrint: (obj) => logger.i(obj),
        ),
      );
    }

    return dio;
  }

  @lazySingleton
  GithubRepoApiService githubRepoApiService(Dio dio) => GithubRepoApiService(dio);

  @lazySingleton
  GithubUsersApiService githubUsersApiService(Dio dio) => GithubUsersApiService(dio);
}
