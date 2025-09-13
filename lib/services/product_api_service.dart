import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../core/api/http_client.dart';
import '../models/products_response.dart';
import '../models/product.dart';
import '../utils/api_error.dart';
import '../utils/map_dio_to_api_error.dart';
import '../utils/app_constants.dart';

part 'product_api_service.g.dart';

@riverpod
ProductApiService productApiService(Ref ref) {
  final httpClient = ref.watch(httpClientProvider);
  return ProductApiService(httpClient);
}

class ProductApiService {
  final Dio _dio;

  ProductApiService(this._dio);

  Future<ProductsResponse> getProducts({
    int skip = 0,
    int limit = AppConstants.pageSize,
  }) async {
    try {
      final response = await _dio.get(
        '/products',
        queryParameters: {'skip': skip, 'limit': limit},
      );
      return ProductsResponse.fromJson(response.data);
    } on DioException catch (e, stackTrace) {
      throw mapDioExceptionToApiError(e, stackTrace);
    } catch (e, stackTrace) {
      throw ApiError.unknown(error: e, stackTrace: stackTrace);
    }
  }

  Future<ProductsResponse> searchProducts(
    String query, {
    int skip = 0,
    int limit = AppConstants.pageSize,
  }) async {
    try {
      final response = await _dio.get(
        '/products/search',
        queryParameters: {'q': query, 'skip': skip, 'limit': limit},
      );
      return ProductsResponse.fromJson(response.data);
    } on DioException catch (e, stackTrace) {
      throw mapDioExceptionToApiError(e, stackTrace);
    } catch (e, stackTrace) {
      throw ApiError.unknown(error: e, stackTrace: stackTrace);
    }
  }

  Future<Product> getProductById(int id) async {
    try {
      final response = await _dio.get('/products/$id');
      return Product.fromJson(response.data);
    } on DioException catch (e, stackTrace) {
      throw mapDioExceptionToApiError(e, stackTrace);
    } catch (e, stackTrace) {
      throw ApiError.unknown(error: e, stackTrace: stackTrace);
    }
  }
}
