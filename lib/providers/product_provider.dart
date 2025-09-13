import 'package:burningbros_productflow/models/favorite.dart';
import 'package:burningbros_productflow/repositories/favorite_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repositories/product_repository.dart';
import '../utils/app_constants.dart';
import '../utils/load_more_result.dart';
import '../states/product_state.dart';
import '../models/product.dart';

part 'product_provider.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  @override
  ProductState build() {
    return ProductState.initial();
  }

  Future<void> refreshProducts() async {
    state = state.copyWith(
      products: AsyncValue.loading(),
      currentSkip: 0,
      exception: null,
    );
    await fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      final repository = ref.read(productRepositoryProvider);

      final result = await repository.getProducts(limit: AppConstants.pageSize);

      state = state.copyWith(
        products: AsyncValue.data(result.products),
        exception: null,
        hasReachedEnd: result.products.length < AppConstants.pageSize,
        currentSkip: result.products.length,
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
    // Check if already loading or reached end
    if (state.products.isLoading || state.hasReachedEnd) {
      return state.hasReachedEnd ? LoadMoreResult.noMore : LoadMoreResult.fail;
    }

    try {
      final repository = ref.read(productRepositoryProvider);

      final result = await repository.getProducts(
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
      if (e is Exception) {
        state = state.copyWith(exception: e);
      } else {
        state = state.copyWith(exception: Exception(e.toString()));
      }
      return LoadMoreResult.fail;
    }
  }

  Future<void> toggleFavorite(Product product) async {
    final repository = ref.read(favoriteRepositoryProvider);
    var isFavorite = true;
    if (product.isFavorite) {
      await repository.removeFavorite(product.id);
      isFavorite = false;
    } else {
      await repository.addFavorite(Favorite.fromProduct(product));
    }
    state.products.whenData((data) {
      state = state.copyWith(
        products: AsyncValue.data(
          data.map((e) {
            if (e.id == product.id) return e.copyWith(isFavorite: isFavorite);
            return e;
          }).toList(),
        ),
      );
    });
  }
}
