// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app/application/products/add_product_form_bloc/add_product_form_bloc.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/presentation/core/utils/location_picker.dart';
import 'package:shopping_app/presentation/core/widgets/app_text_form_field.dart';
import 'package:shopping_app/presentation/core/widgets/buttons/primary_elevated_button.dart';
import 'package:shopping_app/presentation/core/widgets/progress_indicator.dart';

class ProductForm extends StatelessWidget {
  const ProductForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductFormBloc, AddProductFormState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          showProgressIndicator(context);
        }
        if (state.productFailureOrSuccessOption.isSome()) {
          context.router.popForced();
        }
        if (state.productCreated) {
          context.router.popForced();
          context.router.popForced();
          FlushbarHelper.createSuccess(
            message: 'Product added sucessfully!',
          ).show(context);
        }
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            children: [
              const SizedBox(height: 16),
              AppTextFormField(
                label: 'Name',
                hintText: 'Ex: Coca Cola',
                onChanged: (value) {
                  BlocProvider.of<AddProductFormBloc>(context).add(
                    AddProductFormEvent.nameChanged(nameStr: value),
                  );
                },
              ),
              const SizedBox(height: 16),
              AppTextFormField(
                label: 'Category',
                hintText: 'Soft drink',
                onChanged: (value) {
                  BlocProvider.of<AddProductFormBloc>(context).add(
                    AddProductFormEvent.categoryChanged(categoryStr: value),
                  );
                },
              ),
              const SizedBox(height: 16),
              AppTextFormField(
                label: 'Description',
                hintText: 'Enter product description...',
                onChanged: (value) {
                  BlocProvider.of<AddProductFormBloc>(context).add(
                    AddProductFormEvent.descriptionChanged(
                        descriptionStr: value),
                  );
                },
              ),
              const SizedBox(height: 16),
              AppTextFormField(
                label: 'Price',
                hintText: 'Ex: 50',
                onChanged: (value) {
                  BlocProvider.of<AddProductFormBloc>(context).add(
                    AddProductFormEvent.priceChanged(
                      price: double.parse(value),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              const LocationFormField(),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppElevatedButton(
                  onPressed: () {
                    BlocProvider.of<AddProductFormBloc>(context).add(
                      const AddProductFormEvent.submitPressed(),
                    );
                  },
                  child: const Text('Submit'),
                ),
              ),
              const SizedBox(width: 32),
            ],
          ),
        );
      },
    );
  }
}

class LocationFormField extends StatefulWidget {
  const LocationFormField({super.key});

  @override
  State<LocationFormField> createState() => _LocationFormFieldState();
}

class _LocationFormFieldState extends State<LocationFormField> {
  final locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<AddProductFormBloc>(context),
      child: BlocBuilder<AddProductFormBloc, AddProductFormState>(
        builder: (context, state) {
          return AppTextFormField(
            controller: locationController,
            label: 'Address',
            hintText: 'Select address',
            enabled: true,
            suffix: InkWell(
              onTap: () {
                showProgressIndicator(context);
                showPickupLocationSheet(
                  context: context,
                  onPlacePicked: (result) {
                    Location? location;
                    location = Location(
                      type: 'Point',
                      coordinates: [
                        result.geometry!.location.lat,
                        result.geometry!.location.lng,
                      ],
                      address: result.formattedAddress,
                    );
                    context.read<AddProductFormBloc>().add(
                          AddProductFormEvent.locationChanged(
                            location: location,
                          ),
                        );
                    context.router.popForced();
                  },
                ).then((_) {
                  locationController.text = context
                      .read<AddProductFormBloc>()
                      .state
                      .location
                      .address
                      .toString();
                  setState(() {});
                  context.router.popForced();
                });
              },
              child: const Icon(Icons.map),
            ),
            onTap: () async {
              showPickupLocationSheet(
                context: context,
                onPlacePicked: (result) {
                  Location? location;
                  location = Location(
                    type: 'Point',
                    coordinates: [
                      result.geometry!.location.lat,
                      result.geometry!.location.lng,
                    ],
                    address: result.formattedAddress,
                  );
                  context.read<AddProductFormBloc>().add(
                      AddProductFormEvent.locationChanged(location: location!));
                  Navigator.of(context).pop();
                },
              ).then((_) {
                locationController.text = context
                    .read<AddProductFormBloc>()
                    .state
                    .location
                    .address
                    .toString();
                setState(() {});
              });
            },
            onChanged: (value) {
              locationController.text = state.location.address.toString();
            },
          );
        },
      ),
    );
  }
}
