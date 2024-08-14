import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/products/i_product.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/products/product_failure.dart';

part 'get_favourites_state.dart';
part 'get_favourites_cubit.freezed.dart';

@injectable
class GetFavouritesCubit extends Cubit<GetFavouritesState> {
  final IProductRepository _iProductRepository;
  GetFavouritesCubit(this._iProductRepository)
      : super(const GetFavouritesState.initial());
  getFavourites() async {
    emit(const GetFavouritesState.loading());
    final Either<ProductsFailure, List<Product>> favouriteProducts =
        await _iProductRepository.getFavourites();
    favouriteProducts.fold(
      (l) => emit(const GetFavouritesState.failed()),
      (r) => emit(GetFavouritesState.loaded(products: r)),
    );
  }
}
