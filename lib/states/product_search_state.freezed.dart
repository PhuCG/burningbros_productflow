// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductSearchState {
  AsyncValue<List<Product>> get products => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  int get currentSkip => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSearchStateCopyWith<ProductSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchStateCopyWith<$Res> {
  factory $ProductSearchStateCopyWith(
          ProductSearchState value, $Res Function(ProductSearchState) then) =
      _$ProductSearchStateCopyWithImpl<$Res, ProductSearchState>;
  @useResult
  $Res call(
      {AsyncValue<List<Product>> products,
      String searchQuery,
      int currentSkip,
      bool hasReachedEnd,
      Exception? exception});
}

/// @nodoc
class _$ProductSearchStateCopyWithImpl<$Res, $Val extends ProductSearchState>
    implements $ProductSearchStateCopyWith<$Res> {
  _$ProductSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? searchQuery = null,
    Object? currentSkip = null,
    Object? hasReachedEnd = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Product>>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      currentSkip: null == currentSkip
          ? _value.currentSkip
          : currentSkip // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSearchStateImplCopyWith<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  factory _$$ProductSearchStateImplCopyWith(_$ProductSearchStateImpl value,
          $Res Function(_$ProductSearchStateImpl) then) =
      __$$ProductSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<Product>> products,
      String searchQuery,
      int currentSkip,
      bool hasReachedEnd,
      Exception? exception});
}

/// @nodoc
class __$$ProductSearchStateImplCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res, _$ProductSearchStateImpl>
    implements _$$ProductSearchStateImplCopyWith<$Res> {
  __$$ProductSearchStateImplCopyWithImpl(_$ProductSearchStateImpl _value,
      $Res Function(_$ProductSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? searchQuery = null,
    Object? currentSkip = null,
    Object? hasReachedEnd = null,
    Object? exception = freezed,
  }) {
    return _then(_$ProductSearchStateImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Product>>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      currentSkip: null == currentSkip
          ? _value.currentSkip
          : currentSkip // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ProductSearchStateImpl implements _ProductSearchState {
  _$ProductSearchStateImpl(
      {required this.products,
      required this.searchQuery,
      required this.currentSkip,
      required this.hasReachedEnd,
      this.exception});

  @override
  final AsyncValue<List<Product>> products;
  @override
  final String searchQuery;
  @override
  final int currentSkip;
  @override
  final bool hasReachedEnd;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'ProductSearchState(products: $products, searchQuery: $searchQuery, currentSkip: $currentSkip, hasReachedEnd: $hasReachedEnd, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearchStateImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.currentSkip, currentSkip) ||
                other.currentSkip == currentSkip) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products, searchQuery,
      currentSkip, hasReachedEnd, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearchStateImplCopyWith<_$ProductSearchStateImpl> get copyWith =>
      __$$ProductSearchStateImplCopyWithImpl<_$ProductSearchStateImpl>(
          this, _$identity);
}

abstract class _ProductSearchState implements ProductSearchState {
  factory _ProductSearchState(
      {required final AsyncValue<List<Product>> products,
      required final String searchQuery,
      required final int currentSkip,
      required final bool hasReachedEnd,
      final Exception? exception}) = _$ProductSearchStateImpl;

  @override
  AsyncValue<List<Product>> get products;
  @override
  String get searchQuery;
  @override
  int get currentSkip;
  @override
  bool get hasReachedEnd;
  @override
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$ProductSearchStateImplCopyWith<_$ProductSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
