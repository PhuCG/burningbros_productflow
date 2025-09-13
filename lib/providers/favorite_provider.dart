import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repositories/favorite_repository.dart';
import '../models/favorite.dart';
import '../utils/load_more_result.dart';
import '../utils/app_constants.dart';
import '../states/favorite_state.dart';

part 'favorite_provider.g.dart';

@riverpod
class FavoriteNotifier extends _$FavoriteNotifier {
  late FavoriteRepository repository;
  StreamSubscription<List<Favorite>>? favoritesSubscription;
  @override
  FavoriteState build() {
    repository = ref.read(favoriteRepositoryProvider);

    ref.onDispose(() {
      _cancelFavoritesSubscription();
    });

    return FavoriteState.initial();
  }

  void _favoritesSubscription() {
    _cancelFavoritesSubscription();
    favoritesSubscription = repository.watchFavorites().listen((favorites) {
      if (favorites.length >= AppConstants.pageSize) {
        _cancelFavoritesSubscription();
        return;
      }
      state = state.copyWith(favorites: AsyncValue.data(favorites));
    });
  }

  void _cancelFavoritesSubscription() {
    favoritesSubscription?.cancel();
    favoritesSubscription = null;
  }

  Future<void> refreshFavorites() async {
    state = state.copyWith(
      favorites: AsyncValue.loading(),
      currentSkip: 0,
      hasReachedEnd: false,
      exception: null,
    );
    await loadFavorites();
  }

  Future<void> loadFavorites() async {
    try {
      final favorites = await repository.getFavorites(
        skip: state.currentSkip,
        limit: AppConstants.pageSize,
      );

      state = state.copyWith(
        favorites: AsyncValue.data(favorites),
        exception: null,
        currentSkip: favorites.length,
      );
      _favoritesSubscription();
    } catch (e, stackTrace) {
      state = state.copyWith(
        favorites: AsyncValue.error(e, stackTrace),
        exception: e is Exception ? e : Exception(e.toString()),
      );
    }
  }

  Future<LoadMoreResult> loadMore() async {
    if (state.favorites.isLoading || state.hasReachedEnd) {
      return state.hasReachedEnd ? LoadMoreResult.noMore : LoadMoreResult.fail;
    }

    try {
      final favorites = await repository.getFavorites(
        skip: state.currentSkip,
        limit: AppConstants.pageSize,
      );

      if (favorites.isEmpty) {
        state = state.copyWith(hasReachedEnd: true);
        return LoadMoreResult.noMore;
      }

      final currentFavorites = state.favorites.valueOrNull ?? <Favorite>[];
      final List<Favorite> newFavorites = [...currentFavorites, ...favorites];

      final totalCount = await repository.getTotalCount();
      final hasReachedEnd =
          favorites.length < AppConstants.pageSize ||
          newFavorites.length >= totalCount;

      state = state.copyWith(
        favorites: AsyncValue.data(newFavorites),
        exception: null,
        hasReachedEnd: hasReachedEnd,
        currentSkip: state.currentSkip + favorites.length,
      );

      return hasReachedEnd ? LoadMoreResult.noMore : LoadMoreResult.success;
    } catch (e) {
      state = state.copyWith(
        exception: e is Exception ? e : Exception(e.toString()),
      );
      return LoadMoreResult.fail;
    }
  }

  Future<void> removeFavorite(Favorite favorite) async {
    state.favorites.whenData((data) async {
      await repository.removeFavorite(favorite.productId);
      state = state.copyWith(
        favorites: AsyncValue.data(
          data.where((e) => e.productId != favorite.productId).toList(),
        ),
      );
    });
  }
}
