import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/favorite.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  factory FavoriteState({
    required AsyncValue<List<Favorite>> favorites,
    required int currentSkip,
    required bool hasReachedEnd,
    Exception? exception,
  }) = _FavoriteState;

  factory FavoriteState.initial() {
    return FavoriteState(
      favorites: AsyncValue.data([]),
      currentSkip: 0,
      hasReachedEnd: false,
    );
  }
}
