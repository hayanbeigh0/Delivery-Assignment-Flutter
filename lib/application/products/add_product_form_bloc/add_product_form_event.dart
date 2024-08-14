part of 'add_product_form_bloc.dart';

@freezed
class AddProductFormEvent with _$AddProductFormEvent {
  const factory AddProductFormEvent.initialised() = _Initialised;
  const factory AddProductFormEvent.nameChanged({
    required String nameStr,
  }) = _NameChanged;
  const factory AddProductFormEvent.categoryChanged({
    required String categoryStr,
  }) = _CategoryChanged;
  const factory AddProductFormEvent.descriptionChanged({
    required String descriptionStr,
  }) = _DescriptionChanged;
  const factory AddProductFormEvent.priceChanged({
    required double price,
  }) = _PriceChanged;
  const factory AddProductFormEvent.locationChanged({
    required Location location,
  }) = _LocationChanged;
  const factory AddProductFormEvent.submitPressed() = _SubmitPressed;
}
