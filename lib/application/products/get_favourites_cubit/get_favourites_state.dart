part of 'get_favourites_cubit.dart';

@freezed
class GetFavouritesState with _$GetFavouritesState {
  const factory GetFavouritesState.initial() = _Initial;
  const factory GetFavouritesState.loading() = _Loading;
  const factory GetFavouritesState.failed() = _Failed;
  const factory GetFavouritesState.loaded({required List<Product> products}) =
      _Loaded;
}
