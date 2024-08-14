// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:shopping_app/application/auth/auth_bloc/auth_bloc.dart'
    as _i776;
import 'package:shopping_app/application/auth/sign_in_form_bloc/sign_in_form_bloc.dart'
    as _i354;
import 'package:shopping_app/application/auth/sign_up_form_bloc/sign_up_form_bloc.dart'
    as _i568;
import 'package:shopping_app/application/current_user_cubit/current_user_cubit.dart'
    as _i851;
import 'package:shopping_app/application/delivery/deliveries_cubit/deliveries_cubit.dart'
    as _i931;
import 'package:shopping_app/application/delivery/delivery_cubit/delivery_cubit.dart'
    as _i800;
import 'package:shopping_app/application/delivery/delivery_request_cubit/delivery_request_cubit.dart'
    as _i555;
import 'package:shopping_app/application/delivery/initiated_deliveries_cubit/initiated_deliveries_cubit.dart'
    as _i94;
import 'package:shopping_app/application/order/buyer_orders_cubit/buyer_orders_cubit.dart'
    as _i615;
import 'package:shopping_app/application/order/create_order_cubit/create_order_cubit.dart'
    as _i395;
import 'package:shopping_app/application/order/get_orders_cubit/get_orders_cubit.dart'
    as _i326;
import 'package:shopping_app/application/order/order_cubit/order_cubit.dart'
    as _i893;
import 'package:shopping_app/application/products/add_product_form_bloc/add_product_form_bloc.dart'
    as _i1009;
import 'package:shopping_app/application/products/favourites_cubit/favourites_cubit.dart'
    as _i25;
import 'package:shopping_app/application/products/get_favourites_cubit/get_favourites_cubit.dart'
    as _i529;
import 'package:shopping_app/application/products/product_cubit/product_cubit.dart'
    as _i420;
import 'package:shopping_app/application/products/products_cubit/products_cubit.dart'
    as _i8;
import 'package:shopping_app/domain/auth/i_auth_facade.dart' as _i693;
import 'package:shopping_app/domain/delivery/i_delivery.dart' as _i42;
import 'package:shopping_app/domain/product_order/i_product_order.dart'
    as _i261;
import 'package:shopping_app/domain/products/i_product.dart' as _i622;
import 'package:shopping_app/domain/user/i_user.dart' as _i620;
import 'package:shopping_app/infrastructure/auth/auth_facade.dart' as _i713;
import 'package:shopping_app/infrastructure/core/auth_interceptor.dart'
    as _i421;
import 'package:shopping_app/infrastructure/core/dio_module.dart' as _i459;
import 'package:shopping_app/infrastructure/core/firebase_injectable_module.dart'
    as _i388;
import 'package:shopping_app/infrastructure/core/shared_preferences_module.dart'
    as _i622;
import 'package:shopping_app/infrastructure/delivery/delivery_repository.dart'
    as _i622;
import 'package:shopping_app/infrastructure/product_order/product_order_repository.dart'
    as _i333;
import 'package:shopping_app/infrastructure/products/product_repository.dart'
    as _i381;
import 'package:shopping_app/infrastructure/user/user_repository.dart' as _i613;
import 'package:shopping_app/presentation/routes/router.dart' as _i798;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    final dioModule = _$DioModule();
    gh.factory<_i421.AuthInterceptor>(() => _i421.AuthInterceptor());
    gh.factoryAsync<_i460.SharedPreferences>(
        () => sharedPreferencesModule.prefs);
    gh.factory<_i798.AppRouter>(() => _i798.AppRouter());
    gh.lazySingleton<_i59.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i261.IProductOrderRepository>(
        () => _i333.ProductOrderRepository());
    gh.lazySingleton<_i620.IUserRepository>(() => _i613.UserRepository());
    gh.lazySingleton<_i693.IAuthFacade>(() => _i713.AuthFacade());
    gh.lazySingleton<_i622.IProductRepository>(() => _i381.ProductRepository());
    gh.lazySingleton<_i42.IDeliveryRepository>(
        () => _i622.DeliveryRepository());
    gh.factory<_i395.CreateOrderCubit>(
        () => _i395.CreateOrderCubit(gh<_i261.IProductOrderRepository>()));
    gh.factory<_i615.BuyerOrdersCubit>(
        () => _i615.BuyerOrdersCubit(gh<_i261.IProductOrderRepository>()));
    gh.factory<_i893.OrderCubit>(
        () => _i893.OrderCubit(gh<_i261.IProductOrderRepository>()));
    gh.factory<_i326.GetOrdersCubit>(
        () => _i326.GetOrdersCubit(gh<_i261.IProductOrderRepository>()));
    gh.factory<_i800.DeliveryCubit>(
        () => _i800.DeliveryCubit(gh<_i42.IDeliveryRepository>()));
    gh.factory<_i555.DeliveryRequestCubit>(
        () => _i555.DeliveryRequestCubit(gh<_i42.IDeliveryRepository>()));
    gh.factory<_i931.DeliveriesCubit>(
        () => _i931.DeliveriesCubit(gh<_i42.IDeliveryRepository>()));
    gh.factory<_i94.InitiatedDeliveriesCubit>(
        () => _i94.InitiatedDeliveriesCubit(gh<_i42.IDeliveryRepository>()));
    gh.lazySingleton<_i361.Dio>(
        () => dioModule.dio(gh<_i421.AuthInterceptor>()));
    gh.factory<_i568.SignUpFormBloc>(() => _i568.SignUpFormBloc(
          gh<_i693.IAuthFacade>(),
          gh<_i620.IUserRepository>(),
        ));
    gh.factory<_i776.AuthBloc>(() => _i776.AuthBloc(
          gh<_i693.IAuthFacade>(),
          gh<_i620.IUserRepository>(),
        ));
    gh.factory<_i354.SignInFormBloc>(() => _i354.SignInFormBloc(
          gh<_i693.IAuthFacade>(),
          gh<_i620.IUserRepository>(),
        ));
    gh.factory<_i25.FavouritesCubit>(
        () => _i25.FavouritesCubit(gh<_i622.IProductRepository>()));
    gh.factory<_i1009.AddProductFormBloc>(
        () => _i1009.AddProductFormBloc(gh<_i622.IProductRepository>()));
    gh.factory<_i8.ProductsCubit>(
        () => _i8.ProductsCubit(gh<_i622.IProductRepository>()));
    gh.factory<_i420.ProductCubit>(
        () => _i420.ProductCubit(gh<_i622.IProductRepository>()));
    gh.factory<_i529.GetFavouritesCubit>(
        () => _i529.GetFavouritesCubit(gh<_i622.IProductRepository>()));
    gh.factory<_i851.CurrentUserCubit>(
        () => _i851.CurrentUserCubit(gh<_i620.IUserRepository>()));
    return this;
  }
}

class _$SharedPreferencesModule extends _i622.SharedPreferencesModule {}

class _$FirebaseInjectableModule extends _i388.FirebaseInjectableModule {}

class _$DioModule extends _i459.DioModule {}
