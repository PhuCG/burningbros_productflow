import 'package:burningbros_productflow/ui/widgets/product_list.dart';
import 'package:burningbros_productflow/utils/error_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_refresh/easy_refresh.dart';
import '../../providers/search_product_provider.dart';
import '../../utils/app_constants.dart';
import '../../utils/debouncer.dart';
import '../../utils/load_more_result.dart';

class SearchProductScreen extends ConsumerStatefulWidget {
  const SearchProductScreen({super.key, required this.textSearch});
  final String textSearch;

  @override
  ConsumerState<SearchProductScreen> createState() =>
      _SearchProductScreenState();
}

class _SearchProductScreenState extends ConsumerState<SearchProductScreen> {
  final EasyRefreshController _refreshController = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );
  late SearchProductNotifier searchProductNotifier;
  final _debouncer = Debouncer(
    delay: Duration(milliseconds: AppConstants.debounceTime),
  );

  @override
  void initState() {
    super.initState();
    searchProductNotifier = ref.read(searchProductNotifierProvider.notifier);
    // Setup search listener with debounce

    _performSearch(widget.textSearch);
  }

  @override
  void dispose() {
    _refreshController.dispose();
    _debouncer.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(SearchProductScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.textSearch == widget.textSearch) return;
    _performSearch(widget.textSearch);
  }

  void _performSearch(String query) {
    _debouncer.run(() {
      final trimmedQuery = query.trim();
      if (trimmedQuery.isNotEmpty) {
        searchProductNotifier.searchProducts(trimmedQuery);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(searchProductNotifierProvider);

    return Scaffold(
      body: EasyRefresh(
        controller: _refreshController,
        onRefresh: () async {
          await searchProductNotifier.refreshSearch();
          _refreshController.finishRefresh();
          _refreshController.resetFooter();
        },
        onLoad: () async {
          final result = await searchProductNotifier.loadMore();

          // Handle the result based on LoadMoreResult enum
          switch (result) {
            case LoadMoreResult.success:
              _refreshController.finishLoad(IndicatorResult.success);
              break;
            case LoadMoreResult.noMore:
              _refreshController.finishLoad(IndicatorResult.noMore);
              break;
            case LoadMoreResult.fail:
              _refreshController.finishLoad(IndicatorResult.fail);
              break;
          }
        },
        child: searchState.products.when(
          data: (data) {
            if (data.isEmpty) {
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text('Type to search for products'),
                  ],
                ),
              );
            }
            return ProductList(
              products: data,
              onFavoriteToggle: (product) {
                searchProductNotifier.toggleFavorite(product);
              },
            );
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
