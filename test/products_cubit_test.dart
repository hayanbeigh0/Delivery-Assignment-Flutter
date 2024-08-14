import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_app/application/products/product_cubit/product_cubit.dart';
import 'package:shopping_app/domain/products/i_product.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/products/product_failure.dart';

// Create a mock class for IProductRepository
class MockIProductRepository extends Mock implements IProductRepository {}

void main() {
  late ProductCubit productCubit;
  late MockIProductRepository mockIProductRepository;

  setUp(() {
    mockIProductRepository = MockIProductRepository();
    productCubit = ProductCubit(mockIProductRepository);
  });

  tearDown(() {
    productCubit.close();
  });

  group('ProductCubit', () {
    const testProductId = '123';
    var testProduct = Product(
      id: '123',
      name: 'Test Product',
      description: 'This is a test product',
      price: 99.99,
      category: 'MAIN',
      createdAt: DateTime.parse(
        "2024-08-12T15:16:13.672Z",
      ),
    );

    blocTest<ProductCubit, ProductState>(
      'emits [ProductState.loaded] when getProduct succeeds',
      build: () => productCubit,
      act: (cubit) {
        when(() => mockIProductRepository.getProduct(id: testProductId))
            .thenAnswer(
          (_) async => right(testProduct),
        );
        cubit.getProduct(id: testProductId);
      },
      expect: () => [
        ProductState.loaded(product: testProduct),
      ],
      verify: (bloc) {
        verify(
          () => mockIProductRepository.getProduct(
            id: testProduct.id.toString(),
          ),
        ).called(1);
      },
    );

    blocTest<ProductCubit, ProductState>(
      'emits [ProductState.error] when getProduct fails',
      build: () => productCubit,
      act: (cubit) {
        when(() => mockIProductRepository.getProduct(id: testProductId))
            .thenAnswer(
          (_) async => left(
            const ProductsFailure.serverError(),
          ),
        );
        cubit.getProduct(id: testProductId);
      },
      expect: () => [
        const ProductState.error(failure: ProductsFailure.serverError()),
      ],
    );

    blocTest<ProductCubit, ProductState>(
      'emits [ProductState.error] when getProduct fails',
      build: () => productCubit,
      act: (cubit) {
        when(() => mockIProductRepository.getProduct(id: testProductId))
            .thenAnswer(
          (_) async => left(
            const ProductsFailure.cancelledByUser(),
          ),
        );
        cubit.getProduct(id: testProductId);
      },
      expect: () => [
        const ProductState.error(failure: ProductsFailure.cancelledByUser()),
      ],
    );
  });
}
