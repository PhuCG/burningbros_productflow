// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FavoriteState {
  AsyncValue<List<Favorite>> get favorites =>
      throw _privateConstructorUsedError;
  int get currentSkip => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
    FavoriteState value,
    $Res Function(FavoriteState) then,
  ) = _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call({
    AsyncValue<List<Favorite>> favorites,
    int currentSkip,
    bool hasReachedEnd,
    Exception? exception,
  });
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? currentSkip = null,
    Object? hasReachedEnd = null,
    Object? exception = freezed,
  }) {
    return _then(
      _value.copyWith(
            favorites:
                null == favorites
                    ? _value.favorites
                    : favorites // ignore: cast_nullable_to_non_nullable
                        as AsyncValue<List<Favorite>>,
            currentSkip:
                null == currentSkip
                    ? _value.currentSkip
                    : currentSkip // ignore: cast_nullable_to_non_nullable
                        as int,
            hasReachedEnd:
                null == hasReachedEnd
                    ? _value.hasReachedEnd
                    : hasReachedEnd // ignore: cast_nullable_to_non_nullable
                        as bool,
            exception:
                freezed == exception
                    ? _value.exception
                    : exception // ignore: cast_nullable_to_non_nullable
                        as Exception?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FavoriteStateImplCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateImplCopyWith(
    _$FavoriteStateImpl value,
    $Res Function(_$FavoriteStateImpl) then,
  ) = __$$FavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AsyncValue<List<Favorite>> favorites,
    int currentSkip,
    bool hasReachedEnd,
    Exception? exception,
  });
}

/// @nodoc
class __$$FavoriteStateImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateImpl>
    implements _$$FavoriteStateImplCopyWith<$Res> {
  __$$FavoriteStateImplCopyWithImpl(
    _$FavoriteStateImpl _value,
    $Res Function(_$FavoriteStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? currentSkip = null,
    Object? hasReachedEnd = null,
    Object? exception = freezed,
  }) {
    return _then(
      _$FavoriteStateImpl(
        favorites:
            null == favorites
                ? _value.favorites
                : favorites // ignore: cast_nullable_to_non_nullable
                    as AsyncValue<List<Favorite>>,
        currentSkip:
            null == currentSkip
                ? _value.currentSkip
                : currentSkip // ignore: cast_nullable_to_non_nullable
                    as int,
        hasReachedEnd:
            null == hasReachedEnd
                ? _value.hasReachedEnd
                : hasReachedEnd // ignore: cast_nullable_to_non_nullable
                    as bool,
        exception:
            freezed == exception
                ? _value.exception
                : exception // ignore: cast_nullable_to_non_nullable
                    as Exception?,
      ),
    );
  }
}

/// @nodoc

class _$FavoriteStateImpl implements _FavoriteState {
  _$FavoriteStateImpl({
    required this.favorites,
    required this.currentSkip,
    required this.hasReachedEnd,
    this.exception,
  });

  @override
  final AsyncValue<List<Favorite>> favorites;
  @override
  final int currentSkip;
  @override
  final bool hasReachedEnd;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'FavoriteState(favorites: $favorites, currentSkip: $currentSkip, hasReachedEnd: $hasReachedEnd, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateImpl &&
            (identical(other.favorites, favorites) ||
                other.favorites == favorites) &&
            (identical(other.currentSkip, currentSkip) ||
                other.currentSkip == currentSkip) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    favorites,
    currentSkip,
    hasReachedEnd,
    exception,
  );

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      __$$FavoriteStateImplCopyWithImpl<_$FavoriteStateImpl>(this, _$identity);
}

abstract class _FavoriteState implements FavoriteState {
  factory _FavoriteState({
    required final AsyncValue<List<Favorite>> favorites,
    required final int currentSkip,
    required final bool hasReachedEnd,
    final Exception? exception,
  }) = _$FavoriteStateImpl;

  @override
  AsyncValue<List<Favorite>> get favorites;
  @override
  int get currentSkip;
  @override
  bool get hasReachedEnd;
  @override
  Exception? get exception;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
