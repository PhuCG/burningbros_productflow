import 'package:burningbros_productflow/utils/error_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_refresh/easy_refresh.dart';
import '../../providers/favorite_provider.dart';
import '../../utils/load_more_result.dart';
import '../widgets/product_card.dart';

class FavoriteScreen extends ConsumerStatefulWidget {
  const FavoriteScreen({super.key});

  @override
  ConsumerState<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends ConsumerState<FavoriteScreen> {
  final EasyRefreshController _refreshController = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  late FavoriteNotifier favoriteNotifier;
  @override
  void initState() {
    super.initState();
    favoriteNotifier = ref.read(favoriteNotifierProvider.notifier);
    // Load favorites when screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      favoriteNotifier.loadFavorites();
    });
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final favoriteState = ref.watch(
      favoriteNotifierProvider.select((state) => state.favorites),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Favorites'), centerTitle: true),
      body: EasyRefresh(
        controller: _refreshController,
        onRefresh: () async {
          await favoriteNotifier.refreshFavorites();
          _refreshController.finishRefresh();
          _refreshController.resetFooter();
        },
        onLoad: () async {
          final result = await favoriteNotifier.loadMore();

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
        child: favoriteState.when(
          data: (favorites) {
            if (favorites.isEmpty) {
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_border, size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text('No favorites yet'),
                    SizedBox(height: 8),
                    Text('Tap the heart icon to add products to favorites'),
                  ],
                ),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final favorite = favorites[index];

                return ProductCard(
                  product: favorite.toProduct(),
                  isFavorite: true,

                  onFavoriteToggle: () {
                    favoriteNotifier.removeFavorite(favorite);
                  },
                );
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
