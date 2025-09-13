import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/favorite.dart';
import '../services/isar_provider.dart';

part 'favorite_repository.g.dart';

@Riverpod(keepAlive: true)
class FavoriteRepository extends _$FavoriteRepository {
  Isar get _isar => ref.read(isarProvider);
  @override
  FavoriteRepository build() {
    // The actual Isar instance will be accessed via the isarProvider
    return this;
  }

  Future<void> addFavorite(Favorite favorite) async {
    await _isar.writeTxn(() async {
      await _isar.favorites.put(favorite);
    });
  }

  Future<void> removeFavorite(int id) async {
    await _isar.writeTxn(() async {
      await _isar.favorites.delete(id);
    });
  }

  Future<List<Favorite>> getAllFavorites() async {
    return _isar.favorites.where().findAll();
  }

  Stream<List<Favorite>> watchFavorites() async* {
    yield* _isar.favorites.where().watch(fireImmediately: true);
  }
}
