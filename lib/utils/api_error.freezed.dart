// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError()';
}


}

/// @nodoc
class $ApiErrorCopyWith<$Res>  {
$ApiErrorCopyWith(ApiError _, $Res Function(ApiError) __);
}


/// Adds pattern-matching-related methods to [ApiError].
extension ApiErrorPatterns on ApiError {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BadRequestApiError value)?  badRequest,TResult Function( UnauthorizedApiError value)?  unauthorized,TResult Function( ForbiddenApiError value)?  forbidden,TResult Function( NotFoundApiError value)?  notFound,TResult Function( MethodNotAllowedApiError value)?  methodNotAllowed,TResult Function( ConflictApiError value)?  conflict,TResult Function( UnsupportedMediaType value)?  unsupportedMediaType,TResult Function( TooManyRequestsApiError value)?  tooManyRequests,TResult Function( PreconditionFailedApiError value)?  preconditionFailed,TResult Function( PayloadTooLargeApiError value)?  payloadTooLarge,TResult Function( InternalServerErrorApiError value)?  internalServerError,TResult Function( ServiceUnavailableApiError value)?  serviceUnavailable,TResult Function( GatewayTimeoutApiError value)?  gatewayTimeout,TResult Function( ServerOverloadApiError value)?  serverOverload,TResult Function( ServerErrorApiError value)?  serverError,TResult Function( ServerConnectionErrorApiError value)?  serverConnectionError,TResult Function( NetworkErrorApiError value)?  networkError,TResult Function( TimeoutApiError value)?  timeout,TResult Function( UnknownApiError value)?  unknown,TResult Function( MaintenanceApiError value)?  maintenance,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BadRequestApiError() when badRequest != null:
return badRequest(_that);case UnauthorizedApiError() when unauthorized != null:
return unauthorized(_that);case ForbiddenApiError() when forbidden != null:
return forbidden(_that);case NotFoundApiError() when notFound != null:
return notFound(_that);case MethodNotAllowedApiError() when methodNotAllowed != null:
return methodNotAllowed(_that);case ConflictApiError() when conflict != null:
return conflict(_that);case UnsupportedMediaType() when unsupportedMediaType != null:
return unsupportedMediaType(_that);case TooManyRequestsApiError() when tooManyRequests != null:
return tooManyRequests(_that);case PreconditionFailedApiError() when preconditionFailed != null:
return preconditionFailed(_that);case PayloadTooLargeApiError() when payloadTooLarge != null:
return payloadTooLarge(_that);case InternalServerErrorApiError() when internalServerError != null:
return internalServerError(_that);case ServiceUnavailableApiError() when serviceUnavailable != null:
return serviceUnavailable(_that);case GatewayTimeoutApiError() when gatewayTimeout != null:
return gatewayTimeout(_that);case ServerOverloadApiError() when serverOverload != null:
return serverOverload(_that);case ServerErrorApiError() when serverError != null:
return serverError(_that);case ServerConnectionErrorApiError() when serverConnectionError != null:
return serverConnectionError(_that);case NetworkErrorApiError() when networkError != null:
return networkError(_that);case TimeoutApiError() when timeout != null:
return timeout(_that);case UnknownApiError() when unknown != null:
return unknown(_that);case MaintenanceApiError() when maintenance != null:
return maintenance(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BadRequestApiError value)  badRequest,required TResult Function( UnauthorizedApiError value)  unauthorized,required TResult Function( ForbiddenApiError value)  forbidden,required TResult Function( NotFoundApiError value)  notFound,required TResult Function( MethodNotAllowedApiError value)  methodNotAllowed,required TResult Function( ConflictApiError value)  conflict,required TResult Function( UnsupportedMediaType value)  unsupportedMediaType,required TResult Function( TooManyRequestsApiError value)  tooManyRequests,required TResult Function( PreconditionFailedApiError value)  preconditionFailed,required TResult Function( PayloadTooLargeApiError value)  payloadTooLarge,required TResult Function( InternalServerErrorApiError value)  internalServerError,required TResult Function( ServiceUnavailableApiError value)  serviceUnavailable,required TResult Function( GatewayTimeoutApiError value)  gatewayTimeout,required TResult Function( ServerOverloadApiError value)  serverOverload,required TResult Function( ServerErrorApiError value)  serverError,required TResult Function( ServerConnectionErrorApiError value)  serverConnectionError,required TResult Function( NetworkErrorApiError value)  networkError,required TResult Function( TimeoutApiError value)  timeout,required TResult Function( UnknownApiError value)  unknown,required TResult Function( MaintenanceApiError value)  maintenance,}){
final _that = this;
switch (_that) {
case BadRequestApiError():
return badRequest(_that);case UnauthorizedApiError():
return unauthorized(_that);case ForbiddenApiError():
return forbidden(_that);case NotFoundApiError():
return notFound(_that);case MethodNotAllowedApiError():
return methodNotAllowed(_that);case ConflictApiError():
return conflict(_that);case UnsupportedMediaType():
return unsupportedMediaType(_that);case TooManyRequestsApiError():
return tooManyRequests(_that);case PreconditionFailedApiError():
return preconditionFailed(_that);case PayloadTooLargeApiError():
return payloadTooLarge(_that);case InternalServerErrorApiError():
return internalServerError(_that);case ServiceUnavailableApiError():
return serviceUnavailable(_that);case GatewayTimeoutApiError():
return gatewayTimeout(_that);case ServerOverloadApiError():
return serverOverload(_that);case ServerErrorApiError():
return serverError(_that);case ServerConnectionErrorApiError():
return serverConnectionError(_that);case NetworkErrorApiError():
return networkError(_that);case TimeoutApiError():
return timeout(_that);case UnknownApiError():
return unknown(_that);case MaintenanceApiError():
return maintenance(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BadRequestApiError value)?  badRequest,TResult? Function( UnauthorizedApiError value)?  unauthorized,TResult? Function( ForbiddenApiError value)?  forbidden,TResult? Function( NotFoundApiError value)?  notFound,TResult? Function( MethodNotAllowedApiError value)?  methodNotAllowed,TResult? Function( ConflictApiError value)?  conflict,TResult? Function( UnsupportedMediaType value)?  unsupportedMediaType,TResult? Function( TooManyRequestsApiError value)?  tooManyRequests,TResult? Function( PreconditionFailedApiError value)?  preconditionFailed,TResult? Function( PayloadTooLargeApiError value)?  payloadTooLarge,TResult? Function( InternalServerErrorApiError value)?  internalServerError,TResult? Function( ServiceUnavailableApiError value)?  serviceUnavailable,TResult? Function( GatewayTimeoutApiError value)?  gatewayTimeout,TResult? Function( ServerOverloadApiError value)?  serverOverload,TResult? Function( ServerErrorApiError value)?  serverError,TResult? Function( ServerConnectionErrorApiError value)?  serverConnectionError,TResult? Function( NetworkErrorApiError value)?  networkError,TResult? Function( TimeoutApiError value)?  timeout,TResult? Function( UnknownApiError value)?  unknown,TResult? Function( MaintenanceApiError value)?  maintenance,}){
final _that = this;
switch (_that) {
case BadRequestApiError() when badRequest != null:
return badRequest(_that);case UnauthorizedApiError() when unauthorized != null:
return unauthorized(_that);case ForbiddenApiError() when forbidden != null:
return forbidden(_that);case NotFoundApiError() when notFound != null:
return notFound(_that);case MethodNotAllowedApiError() when methodNotAllowed != null:
return methodNotAllowed(_that);case ConflictApiError() when conflict != null:
return conflict(_that);case UnsupportedMediaType() when unsupportedMediaType != null:
return unsupportedMediaType(_that);case TooManyRequestsApiError() when tooManyRequests != null:
return tooManyRequests(_that);case PreconditionFailedApiError() when preconditionFailed != null:
return preconditionFailed(_that);case PayloadTooLargeApiError() when payloadTooLarge != null:
return payloadTooLarge(_that);case InternalServerErrorApiError() when internalServerError != null:
return internalServerError(_that);case ServiceUnavailableApiError() when serviceUnavailable != null:
return serviceUnavailable(_that);case GatewayTimeoutApiError() when gatewayTimeout != null:
return gatewayTimeout(_that);case ServerOverloadApiError() when serverOverload != null:
return serverOverload(_that);case ServerErrorApiError() when serverError != null:
return serverError(_that);case ServerConnectionErrorApiError() when serverConnectionError != null:
return serverConnectionError(_that);case NetworkErrorApiError() when networkError != null:
return networkError(_that);case TimeoutApiError() when timeout != null:
return timeout(_that);case UnknownApiError() when unknown != null:
return unknown(_that);case MaintenanceApiError() when maintenance != null:
return maintenance(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message)?  badRequest,TResult Function()?  unauthorized,TResult Function()?  forbidden,TResult Function()?  notFound,TResult Function()?  methodNotAllowed,TResult Function()?  conflict,TResult Function()?  unsupportedMediaType,TResult Function()?  tooManyRequests,TResult Function()?  preconditionFailed,TResult Function()?  payloadTooLarge,TResult Function()?  internalServerError,TResult Function()?  serviceUnavailable,TResult Function()?  gatewayTimeout,TResult Function()?  serverOverload,TResult Function()?  serverError,TResult Function( String? error)?  serverConnectionError,TResult Function()?  networkError,TResult Function()?  timeout,TResult Function( Object? error,  StackTrace? stackTrace)?  unknown,TResult Function()?  maintenance,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BadRequestApiError() when badRequest != null:
return badRequest(_that.message);case UnauthorizedApiError() when unauthorized != null:
return unauthorized();case ForbiddenApiError() when forbidden != null:
return forbidden();case NotFoundApiError() when notFound != null:
return notFound();case MethodNotAllowedApiError() when methodNotAllowed != null:
return methodNotAllowed();case ConflictApiError() when conflict != null:
return conflict();case UnsupportedMediaType() when unsupportedMediaType != null:
return unsupportedMediaType();case TooManyRequestsApiError() when tooManyRequests != null:
return tooManyRequests();case PreconditionFailedApiError() when preconditionFailed != null:
return preconditionFailed();case PayloadTooLargeApiError() when payloadTooLarge != null:
return payloadTooLarge();case InternalServerErrorApiError() when internalServerError != null:
return internalServerError();case ServiceUnavailableApiError() when serviceUnavailable != null:
return serviceUnavailable();case GatewayTimeoutApiError() when gatewayTimeout != null:
return gatewayTimeout();case ServerOverloadApiError() when serverOverload != null:
return serverOverload();case ServerErrorApiError() when serverError != null:
return serverError();case ServerConnectionErrorApiError() when serverConnectionError != null:
return serverConnectionError(_that.error);case NetworkErrorApiError() when networkError != null:
return networkError();case TimeoutApiError() when timeout != null:
return timeout();case UnknownApiError() when unknown != null:
return unknown(_that.error,_that.stackTrace);case MaintenanceApiError() when maintenance != null:
return maintenance();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message)  badRequest,required TResult Function()  unauthorized,required TResult Function()  forbidden,required TResult Function()  notFound,required TResult Function()  methodNotAllowed,required TResult Function()  conflict,required TResult Function()  unsupportedMediaType,required TResult Function()  tooManyRequests,required TResult Function()  preconditionFailed,required TResult Function()  payloadTooLarge,required TResult Function()  internalServerError,required TResult Function()  serviceUnavailable,required TResult Function()  gatewayTimeout,required TResult Function()  serverOverload,required TResult Function()  serverError,required TResult Function( String? error)  serverConnectionError,required TResult Function()  networkError,required TResult Function()  timeout,required TResult Function( Object? error,  StackTrace? stackTrace)  unknown,required TResult Function()  maintenance,}) {final _that = this;
switch (_that) {
case BadRequestApiError():
return badRequest(_that.message);case UnauthorizedApiError():
return unauthorized();case ForbiddenApiError():
return forbidden();case NotFoundApiError():
return notFound();case MethodNotAllowedApiError():
return methodNotAllowed();case ConflictApiError():
return conflict();case UnsupportedMediaType():
return unsupportedMediaType();case TooManyRequestsApiError():
return tooManyRequests();case PreconditionFailedApiError():
return preconditionFailed();case PayloadTooLargeApiError():
return payloadTooLarge();case InternalServerErrorApiError():
return internalServerError();case ServiceUnavailableApiError():
return serviceUnavailable();case GatewayTimeoutApiError():
return gatewayTimeout();case ServerOverloadApiError():
return serverOverload();case ServerErrorApiError():
return serverError();case ServerConnectionErrorApiError():
return serverConnectionError(_that.error);case NetworkErrorApiError():
return networkError();case TimeoutApiError():
return timeout();case UnknownApiError():
return unknown(_that.error,_that.stackTrace);case MaintenanceApiError():
return maintenance();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message)?  badRequest,TResult? Function()?  unauthorized,TResult? Function()?  forbidden,TResult? Function()?  notFound,TResult? Function()?  methodNotAllowed,TResult? Function()?  conflict,TResult? Function()?  unsupportedMediaType,TResult? Function()?  tooManyRequests,TResult? Function()?  preconditionFailed,TResult? Function()?  payloadTooLarge,TResult? Function()?  internalServerError,TResult? Function()?  serviceUnavailable,TResult? Function()?  gatewayTimeout,TResult? Function()?  serverOverload,TResult? Function()?  serverError,TResult? Function( String? error)?  serverConnectionError,TResult? Function()?  networkError,TResult? Function()?  timeout,TResult? Function( Object? error,  StackTrace? stackTrace)?  unknown,TResult? Function()?  maintenance,}) {final _that = this;
switch (_that) {
case BadRequestApiError() when badRequest != null:
return badRequest(_that.message);case UnauthorizedApiError() when unauthorized != null:
return unauthorized();case ForbiddenApiError() when forbidden != null:
return forbidden();case NotFoundApiError() when notFound != null:
return notFound();case MethodNotAllowedApiError() when methodNotAllowed != null:
return methodNotAllowed();case ConflictApiError() when conflict != null:
return conflict();case UnsupportedMediaType() when unsupportedMediaType != null:
return unsupportedMediaType();case TooManyRequestsApiError() when tooManyRequests != null:
return tooManyRequests();case PreconditionFailedApiError() when preconditionFailed != null:
return preconditionFailed();case PayloadTooLargeApiError() when payloadTooLarge != null:
return payloadTooLarge();case InternalServerErrorApiError() when internalServerError != null:
return internalServerError();case ServiceUnavailableApiError() when serviceUnavailable != null:
return serviceUnavailable();case GatewayTimeoutApiError() when gatewayTimeout != null:
return gatewayTimeout();case ServerOverloadApiError() when serverOverload != null:
return serverOverload();case ServerErrorApiError() when serverError != null:
return serverError();case ServerConnectionErrorApiError() when serverConnectionError != null:
return serverConnectionError(_that.error);case NetworkErrorApiError() when networkError != null:
return networkError();case TimeoutApiError() when timeout != null:
return timeout();case UnknownApiError() when unknown != null:
return unknown(_that.error,_that.stackTrace);case MaintenanceApiError() when maintenance != null:
return maintenance();case _:
  return null;

}
}

}

/// @nodoc


class BadRequestApiError extends ApiError {
  const BadRequestApiError({this.message}): super._();
  

 final  String? message;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BadRequestApiErrorCopyWith<BadRequestApiError> get copyWith => _$BadRequestApiErrorCopyWithImpl<BadRequestApiError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadRequestApiError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiError.badRequest(message: $message)';
}


}

/// @nodoc
abstract mixin class $BadRequestApiErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory $BadRequestApiErrorCopyWith(BadRequestApiError value, $Res Function(BadRequestApiError) _then) = _$BadRequestApiErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$BadRequestApiErrorCopyWithImpl<$Res>
    implements $BadRequestApiErrorCopyWith<$Res> {
  _$BadRequestApiErrorCopyWithImpl(this._self, this._then);

  final BadRequestApiError _self;
  final $Res Function(BadRequestApiError) _then;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(BadRequestApiError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UnauthorizedApiError extends ApiError {
  const UnauthorizedApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorizedApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.unauthorized()';
}


}




/// @nodoc


class ForbiddenApiError extends ApiError {
  const ForbiddenApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForbiddenApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.forbidden()';
}


}




/// @nodoc


class NotFoundApiError extends ApiError {
  const NotFoundApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.notFound()';
}


}




/// @nodoc


class MethodNotAllowedApiError extends ApiError {
  const MethodNotAllowedApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MethodNotAllowedApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.methodNotAllowed()';
}


}




/// @nodoc


class ConflictApiError extends ApiError {
  const ConflictApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConflictApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.conflict()';
}


}




/// @nodoc


class UnsupportedMediaType extends ApiError {
  const UnsupportedMediaType(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnsupportedMediaType);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.unsupportedMediaType()';
}


}




/// @nodoc


class TooManyRequestsApiError extends ApiError {
  const TooManyRequestsApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TooManyRequestsApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.tooManyRequests()';
}


}




/// @nodoc


class PreconditionFailedApiError extends ApiError {
  const PreconditionFailedApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreconditionFailedApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.preconditionFailed()';
}


}




/// @nodoc


class PayloadTooLargeApiError extends ApiError {
  const PayloadTooLargeApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayloadTooLargeApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.payloadTooLarge()';
}


}




/// @nodoc


class InternalServerErrorApiError extends ApiError {
  const InternalServerErrorApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternalServerErrorApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.internalServerError()';
}


}




/// @nodoc


class ServiceUnavailableApiError extends ApiError {
  const ServiceUnavailableApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceUnavailableApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.serviceUnavailable()';
}


}




/// @nodoc


class GatewayTimeoutApiError extends ApiError {
  const GatewayTimeoutApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GatewayTimeoutApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.gatewayTimeout()';
}


}




/// @nodoc


class ServerOverloadApiError extends ApiError {
  const ServerOverloadApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerOverloadApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.serverOverload()';
}


}




/// @nodoc


class ServerErrorApiError extends ApiError {
  const ServerErrorApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerErrorApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.serverError()';
}


}




/// @nodoc


class ServerConnectionErrorApiError extends ApiError {
  const ServerConnectionErrorApiError({this.error}): super._();
  

 final  String? error;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerConnectionErrorApiErrorCopyWith<ServerConnectionErrorApiError> get copyWith => _$ServerConnectionErrorApiErrorCopyWithImpl<ServerConnectionErrorApiError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerConnectionErrorApiError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ApiError.serverConnectionError(error: $error)';
}


}

/// @nodoc
abstract mixin class $ServerConnectionErrorApiErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory $ServerConnectionErrorApiErrorCopyWith(ServerConnectionErrorApiError value, $Res Function(ServerConnectionErrorApiError) _then) = _$ServerConnectionErrorApiErrorCopyWithImpl;
@useResult
$Res call({
 String? error
});




}
/// @nodoc
class _$ServerConnectionErrorApiErrorCopyWithImpl<$Res>
    implements $ServerConnectionErrorApiErrorCopyWith<$Res> {
  _$ServerConnectionErrorApiErrorCopyWithImpl(this._self, this._then);

  final ServerConnectionErrorApiError _self;
  final $Res Function(ServerConnectionErrorApiError) _then;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(ServerConnectionErrorApiError(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class NetworkErrorApiError extends ApiError {
  const NetworkErrorApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkErrorApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.networkError()';
}


}




/// @nodoc


class TimeoutApiError extends ApiError {
  const TimeoutApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeoutApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.timeout()';
}


}




/// @nodoc


class UnknownApiError extends ApiError {
  const UnknownApiError({this.error, this.stackTrace}): super._();
  

 final  Object? error;
 final  StackTrace? stackTrace;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownApiErrorCopyWith<UnknownApiError> get copyWith => _$UnknownApiErrorCopyWithImpl<UnknownApiError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownApiError&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'ApiError.unknown(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $UnknownApiErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory $UnknownApiErrorCopyWith(UnknownApiError value, $Res Function(UnknownApiError) _then) = _$UnknownApiErrorCopyWithImpl;
@useResult
$Res call({
 Object? error, StackTrace? stackTrace
});




}
/// @nodoc
class _$UnknownApiErrorCopyWithImpl<$Res>
    implements $UnknownApiErrorCopyWith<$Res> {
  _$UnknownApiErrorCopyWithImpl(this._self, this._then);

  final UnknownApiError _self;
  final $Res Function(UnknownApiError) _then;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? stackTrace = freezed,}) {
  return _then(UnknownApiError(
error: freezed == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class MaintenanceApiError extends ApiError {
  const MaintenanceApiError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaintenanceApiError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiError.maintenance()';
}


}




// dart format on
