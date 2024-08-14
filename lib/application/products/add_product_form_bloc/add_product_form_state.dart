part of 'add_product_form_bloc.dart';

@freezed
class AddProductFormState with _$AddProductFormState {
  const factory AddProductFormState({
    required String name,
    required String category,
    required String description,
    required double price,
    required Location location,
    required bool isSubmitting,
    required bool showErrorMessages,
    required bool productCreated,
    required Option<Either<ProductsFailure, Product>>
        productFailureOrSuccessOption,
  }) = _AddProductFormState;

  factory AddProductFormState.initial() => AddProductFormState(
        name: '',
        category: '',
        description: '',
        price: 0.0,
        location: const Location(type: 'Point', coordinates: []),
        isSubmitting: false,
        showErrorMessages: false,
        productFailureOrSuccessOption: none(),
        productCreated: false,
      );
}
