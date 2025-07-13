import 'dart:core';

abstract class ApiConstants{
    static const String baseUrl = 'https://vcare.integration25.com/api/';
    static const String login = 'auth/login';
    static const String register = 'auth/register';
}

class ApiErrors{
  static const String badRequest = 'Bad Request';
  static const String noContent = 'No Content';
  static const String forbiddenError = 'Forbidden Error';
  static const String unauthorizedError = 'Unauthorized Error';
  static const String notFoundError = 'Not Found Error';
  static const String conflictError = 'Conflict Error';
  static const String internalServerError = 'Internal Server Error';
  static const String unknownError = 'Unknown Error';
  static const String timeoutError = 'Timeout Error';
  static const String defaultError = 'Default Error';
  static const String cacheError = 'Cache Error';
  static const String notInternetError = 'No Internet Error';
  static const String retryAgainMessage = 'Retry Again Message';
  static const String leadingMessage = 'Leading Message';
  static const String ok = 'Ok';

}