import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/product.dart';

part 'product_search_state.freezed.dart';

@freezed
class ProductSearchState with _$ProductSearchState {
  factory ProductSearchState({
    required AsyncValue<List<Product>> products,
    required String searchQuery,
    required int currentSkip,
    required bool hasReachedEnd,
    Exception? exception,
  }) = _ProductSearchState;

  factory ProductSearchState.initial() {
    return ProductSearchState(
      products: AsyncValue.data([]),
      searchQuery: '',
      currentSkip: 0,
      hasReachedEnd: false,
    );
  }
}
