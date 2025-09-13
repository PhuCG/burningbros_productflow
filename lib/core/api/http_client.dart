import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_client.g.dart';

@Riverpod(keepAlive: true)
HttpClient httpClient(Ref ref) {
  return HttpClient(baseUrl: 'https://dummyjson.com');
}

class HttpClient with DioMixin implements Dio {
  HttpClient({required String baseUrl}) {
    options = BaseOptions(baseUrl: baseUrl);
    httpClientAdapter = HttpClientAdapter();
  }
}
