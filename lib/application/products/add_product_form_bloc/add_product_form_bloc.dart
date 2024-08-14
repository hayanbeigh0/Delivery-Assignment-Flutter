import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/products/i_product.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/products/product_failure.dart';

part 'add_product_form_event.dart';
part 'add_product_form_state.dart';
part 'add_product_form_bloc.freezed.dart';

@injectable
class AddProductFormBloc
    extends Bloc<AddProductFormEvent, AddProductFormState> {
  final IProductRepository _iProductRepository;
  AddProductFormBloc(this._iProductRepository)
      : super(AddProductFormState.initial()) {
    on<AddProductFormEvent>((event, emit) async {
      await event.map(
        initialised: (value) {
          emit(state.copyWith(productCreated: false));
        },
        nameChanged: (value) {
          emit(state.copyWith(
            name: value.nameStr,
            showErrorMessages: false,
          ));
        },
        categoryChanged: (value) {
          emit(state.copyWith(
            category: value.categoryStr,
            showErrorMessages: false,
          ));
        },
        descriptionChanged: (value) {
          emit(state.copyWith(
            description: value.descriptionStr,
            showErrorMessages: false,
          ));
        },
        priceChanged: (value) {
          emit(state.copyWith(
            price: value.price,
            showErrorMessages: false,
          ));
        },
        locationChanged: (value) {
          emit(state.copyWith(
            location: value.location,
            showErrorMessages: false,
          ));
        },
        submitPressed: (value) async {
          emit(state.copyWith(isSubmitting: true));
          Either<ProductsFailure, Product> failureOrSuccess =
              await _iProductRepository.addProduct(
            product: Product(
              category: state.category,
              name: state.name,
              price: state.price,
              location: state.location,
              description: state.description,
            ),
          );
          failureOrSuccess.fold(
            (f) => emit(state.copyWith(
              isSubmitting: false,
              productFailureOrSuccessOption: some(failureOrSuccess),
            )),
            (r) => emit(state.copyWith(
              showErrorMessages: false,
              isSubmitting: false,
              productCreated: true,
              productFailureOrSuccessOption: none(),
            )),
          );
        },
      );
    });
  }
}
