import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/products/i_product.dart';
import 'package:shopping_app/domain/products/product.dart';

part 'favourites_state.dart';
part 'favourites_cubit.freezed.dart';

@injectable
class FavouritesCubit extends Cubit<FavouritesState> {
  final IProductRepository _iProductRepository;
  FavouritesCubit(this._iProductRepository)
      : super(const FavouritesState.initial());

  addProduct({required Product product}) {
    emit(const FavouritesState.favLoading());
    _iProductRepository.addToFavourites(product: product);
    emit(const FavouritesState.favLoaded());
  }

  removeProduct({required Product product}) {
    emit(const FavouritesState.favLoading());
    _iProductRepository.removeFromFavourites(product: product);
    emit(const FavouritesState.favLoaded());
  }
}
