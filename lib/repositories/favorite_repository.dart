import 'package:isar_community/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/favorite.dart';
import '../services/isar_provider.dart';
import '../utils/app_constants.dart';

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
      await _isar.favorites.deleteByProductId(id);
    });
  }

  Future<List<Favorite>> getFavorites({
    int skip = 0,
    int limit = AppConstants.pageSize,
  }) async {
    return _isar.favorites.where().offset(skip).limit(limit).findAll();
  }

  Future<List<Favorite>> getAllFavorites() async {
    return _isar.favorites.where().findAll();
  }

  Future<int> getTotalCount() async {
    return _isar.favorites.count();
  }

  Stream<List<Favorite>> watchFavorites({
    int skip = 0,
    int limit = AppConstants.pageSize,
  }) async* {
    yield* _isar.favorites
        .where()
        .offset(skip)
        .limit(limit)
        .watch(fireImmediately: true);
  }

  Stream<List<Favorite>> watchAllFavorites() async* {
    yield* _isar.favorites.where().watch(fireImmediately: true);
  }
}
