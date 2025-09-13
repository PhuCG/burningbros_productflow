import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repositories/product_repository.dart';
import '../utils/app_constants.dart';
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

      final result = await repository.getProducts(
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
}
