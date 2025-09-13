import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repositories/favorite_repository.dart';
import '../models/favorite.dart';

part 'favorite_provider.g.dart';

@riverpod
class FavoriteNotifier extends _$FavoriteNotifier {
  @override
  Future<List<Favorite>> build() async {
    return ref.read(favoriteRepositoryProvider).getAllFavorites();
  }

  Future<void> loadFavorites() async {
    state = const AsyncValue.loading();
    try {
      final favorites =
          await ref.read(favoriteRepositoryProvider).getAllFavorites();
      state = AsyncValue.data(favorites);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }

  Future<void> removeFavorite(int favoriteId) async {
    try {
      await ref.read(favoriteRepositoryProvider).removeFavorite(favoriteId);

      // Reload favorites to update UI
      await loadFavorites();
    } catch (e) {
      // Handle error if needed
      rethrow;
    }
  }
}
