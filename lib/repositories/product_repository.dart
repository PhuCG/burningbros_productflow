import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/products_response.dart';
import '../models/product.dart';
import '../services/product_api_service.dart';
import '../utils/app_constants.dart';

part 'product_repository.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  final apiService = ref.watch(productApiServiceProvider);
  return ProductRepository(apiService);
}

class ProductRepository {
  final ProductApiService _apiService;

  ProductRepository(this._apiService);

  Future<ProductsResponse> getProducts({
    int skip = 0,
    int limit = AppConstants.pageSize,
  }) {
    return _apiService.getProducts(skip: skip, limit: limit);
  }

  Future<ProductsResponse> searchProducts(
    String query, {
    int skip = 0,
    int limit = AppConstants.pageSize,
  }) {
    return _apiService.searchProducts(query, skip: skip, limit: limit);
  }

  Future<Product> getProductById(int id) {
    return _apiService.getProductById(id);
  }
}
