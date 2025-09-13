import 'package:burningbros_productflow/ui/widgets/product_list.dart';
import 'package:burningbros_productflow/utils/error_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_refresh/easy_refresh.dart';
import '../../providers/product_provider.dart';
import 'search_product_screen.dart';

class ProductListScreen extends ConsumerStatefulWidget {
  const ProductListScreen({super.key});

  @override
  ConsumerState<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends ConsumerState<ProductListScreen> {
  late EasyRefreshController _refreshController;

  late ProductNotifier productNotifier;
  @override
  void initState() {
    super.initState();
    _refreshController = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    productNotifier = ref.read(productNotifierProvider.notifier);
    // Fetch products when screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(productNotifierProvider.notifier).fetchProducts();
    });
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.search),
        //     onPressed: () {
        //       Navigator.of(context).push(
        //         MaterialPageRoute(
        //           builder: (context) => const SearchProductScreen(),
        //         ),
        //       );
        //     },
        //   ),
        // ],
      ),
      body: EasyRefresh(
        controller: _refreshController,
        onRefresh: () async {
          await productNotifier.refreshProducts();
          _refreshController.finishRefresh();
          _refreshController.resetFooter();
        },
        onLoad: () async {
          if (!productState.hasReachedEnd) {
            await productNotifier.fetchProducts();
          }
          _refreshController.finishLoad(
            productState.hasReachedEnd
                ? IndicatorResult.noMore
                : IndicatorResult.success,
          );
        },
        child: productState.products.when(
          data: (data) {
            return ProductList(products: data);
          },
          error: (error, stackTrace) {
            return error.toLargeErrorWidget(context);
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
