import 'dart:io';

import 'package:burningbros_productflow/utils/api_error.dart';
import 'package:dio/dio.dart';

ApiError mapDioExceptionToApiError(DioException e, [StackTrace? stackTrace]) {
  late ApiError error;
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      error = const ApiError.timeout();

    case DioExceptionType.badCertificate:
    case DioExceptionType.connectionError:
      error = ApiError.serverConnectionError(error: e.message);

    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;
      switch (statusCode) {
        case 400:
          error = ApiError.badRequest(message: e.message);
        case 401:
          error = const ApiError.unauthorized();
        case 403:
          error = const ApiError.forbidden();
        case 404:
          error = const ApiError.notFound();
        case 405:
          error = const ApiError.methodNotAllowed();
        case 409:
          error = const ApiError.conflict();
        case 413:
          error = const ApiError.payloadTooLarge();
        case 415:
          error = const ApiError.unsupportedMediaType();
        case 412:
          error = const ApiError.preconditionFailed();
        case 429:
          error = const ApiError.tooManyRequests();
        case 500:
          error = const ApiError.internalServerError();
        case 502:
        case 504:
          error = const ApiError.gatewayTimeout();
        case 503:
          error = const ApiError.serviceUnavailable();
        default:
          if (statusCode != null && statusCode >= 500) {
            error = const ApiError.serverError();
          }
          error = const ApiError.unknown();
      }

    case DioExceptionType.cancel:
      error = const ApiError.unknown();

    case DioExceptionType.unknown:
      if (e.error is SocketException) error = const ApiError.networkError();
      error = const ApiError.unknown();
  }

  return error;
}
