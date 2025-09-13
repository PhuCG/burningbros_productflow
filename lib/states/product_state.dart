import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/product.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    required AsyncValue<List<Product>> products,
    required int currentSkip,
    required bool hasReachedEnd,
    Exception? exception,
  }) = _ProductState;

  factory ProductState.initial() {
    return ProductState(
      products: AsyncValue.loading(),
      currentSkip: 0,
      hasReachedEnd: false,
    );
  }
}
