import 'package:burningbros_productflow/utils/error_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_refresh/easy_refresh.dart';
import '../../providers/favorite_provider.dart';
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

  @override
  void initState() {
    super.initState();
    // Load favorites when screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(favoriteNotifierProvider.notifier).loadFavorites();
    });
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final favoriteState = ref.watch(favoriteNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Favorites'), centerTitle: true),
      body: EasyRefresh(
        controller: _refreshController,
        onRefresh: () async {
          await ref.read(favoriteNotifierProvider.notifier).loadFavorites();
          _refreshController.finishRefresh();
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
                  onTap: () {
                    // TODO: Navigate to product detail screen
                  },
                  onFavoriteToggle: () {
                    ref
                        .read(favoriteNotifierProvider.notifier)
                        .removeFavorite(favorite.id);
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
