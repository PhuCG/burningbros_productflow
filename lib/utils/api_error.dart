import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
sealed class ApiError with _$ApiError implements Exception {
  // HTTP status code related errors
  const factory ApiError.badRequest({String? message}) = BadRequestApiError;
  const factory ApiError.unauthorized() = UnauthorizedApiError;
  const factory ApiError.forbidden() = ForbiddenApiError;
  const factory ApiError.notFound() = NotFoundApiError;
  const factory ApiError.methodNotAllowed() = MethodNotAllowedApiError;
  const factory ApiError.conflict() = ConflictApiError;
  const factory ApiError.unsupportedMediaType() = UnsupportedMediaType;
  const factory ApiError.tooManyRequests() = TooManyRequestsApiError;
  const factory ApiError.preconditionFailed() = PreconditionFailedApiError;
  const factory ApiError.payloadTooLarge() = PayloadTooLargeApiError;

  // Server-side errors
  const factory ApiError.internalServerError() = InternalServerErrorApiError;
  const factory ApiError.serviceUnavailable() = ServiceUnavailableApiError;
  const factory ApiError.gatewayTimeout() = GatewayTimeoutApiError;
  const factory ApiError.serverOverload() = ServerOverloadApiError;
  const factory ApiError.serverError() = ServerErrorApiError;
  const factory ApiError.serverConnectionError({String? error}) =
      ServerConnectionErrorApiError;

  // Network-related errors
  const factory ApiError.networkError() = NetworkErrorApiError;
  const factory ApiError.timeout() = TimeoutApiError;

  // Other errors
  const factory ApiError.unknown({Object? error, StackTrace? stackTrace}) =
      UnknownApiError;
  const factory ApiError.maintenance() = MaintenanceApiError;

  const ApiError._();
}
