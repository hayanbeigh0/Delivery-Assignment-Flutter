part of 'favourites_cubit.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.initial() = _Initial;
  const factory FavouritesState.favLoading() = _FavLoading;
  const factory FavouritesState.failed() = _Failed;
  const factory FavouritesState.favLoaded() = _FavLoaded;
}
