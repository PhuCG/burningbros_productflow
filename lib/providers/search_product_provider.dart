import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repositories/product_repository.dart';
import '../utils/app_constants.dart';
import '../utils/load_more_result.dart';
import '../states/product_search_state.dart';
import '../models/product.dart';

part 'search_product_provider.g.dart';

@riverpod
class SearchProductNotifier extends _$SearchProductNotifier {
  @override
  ProductSearchState build() {
    return ProductSearchState.initial();
  }

  Future<void> searchProducts(String query) async {
    state = state.copyWith(
      products: AsyncValue.loading(),
      searchQuery: query,
      currentSkip: 0,
      exception: null,
      hasReachedEnd: false,
    );
    await _performSearch(query);
  }

  Future<void> refreshSearch() async {
    if (state.searchQuery.isEmpty) return;

    state = state.copyWith(
      products: AsyncValue.loading(),
      currentSkip: 0,
      exception: null,
    );
    await _performSearch(state.searchQuery);
  }

  Future<void> _performSearch(String query) async {
    try {
      final repository = ref.read(productRepositoryProvider);

      final result = await repository.searchProducts(
        query,
        skip: state.currentSkip,
        limit: AppConstants.pageSize,
      );

      final currentProducts = state.products.valueOrNull ?? <Product>[];
      final List<Product> newProducts = [
        ...currentProducts,
        ...result.products,
      ];

      final hasReachedEnd =
          result.products.length < AppConstants.pageSize ||
          (result.total != 0 && newProducts.length >= result.total);

      state = state.copyWith(
        products: AsyncValue.data(newProducts),
        exception: null,
        hasReachedEnd: hasReachedEnd,
        currentSkip: state.currentSkip + result.products.length,
      );
    } catch (e) {
      state = state.copyWith(products: AsyncValue.error(e, StackTrace.current));
      if (e is Exception) {
        state = state.copyWith(exception: e);
      } else {
        state = state.copyWith(exception: Exception(e.toString()));
      }
    }
  }

  Future<LoadMoreResult> loadMore() async {
    if (state.products.isLoading ||
        state.hasReachedEnd ||
        state.searchQuery.isEmpty) {
      return state.hasReachedEnd ? LoadMoreResult.noMore : LoadMoreResult.fail;
    }

    try {
      final repository = ref.read(productRepositoryProvider);

      final result = await repository.searchProducts(
        state.searchQuery,
        skip: state.currentSkip,
        limit: AppConstants.pageSize,
      );

      // Check if no more products available
      if (result.products.isEmpty) {
        state = state.copyWith(hasReachedEnd: true);
        return LoadMoreResult.noMore;
      }

      final currentProducts = state.products.valueOrNull ?? <Product>[];
      final List<Product> newProducts = [
        ...currentProducts,
        ...result.products,
      ];

      final hasReachedEnd =
          result.products.length < AppConstants.pageSize ||
          (result.total != 0 && newProducts.length >= result.total);

      state = state.copyWith(
        products: AsyncValue.data(newProducts),
        exception: null,
        hasReachedEnd: hasReachedEnd,
        currentSkip: state.currentSkip + result.products.length,
      );

      return hasReachedEnd ? LoadMoreResult.noMore : LoadMoreResult.success;
    } catch (e) {
      // Handle error but don't update state to avoid losing current data
      if (e is Exception) {
        state = state.copyWith(exception: e);
      } else {
        state = state.copyWith(exception: Exception(e.toString()));
      }
      return LoadMoreResult.fail;
    }
  }

  void clearSearch() {
    state = ProductSearchState.initial();
  }
}
