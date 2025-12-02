import 'package:dio/dio.dart';

class DioErrorHandler {
  static String handleError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 404) {
          return 'Resource not found.';
        } else if (statusCode == 403) {
          return 'API rate limit exceeded. Please try again later.';
        } else if (statusCode == 422) {
          return 'Validation failed. Please check your search query.';
        }
        return 'Server error: ${e.response?.statusMessage ?? 'Unknown error'}';
      case DioExceptionType.cancel:
        return 'Request was cancelled.';
      case DioExceptionType.unknown:
        return 'Network error. Please check your internet connection.';
      default:
        return 'An unexpected error occurred.';
    }
  }
}
