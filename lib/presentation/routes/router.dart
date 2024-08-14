import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/presentation/routes/router.gr.dart';

@injectable
@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/splash', initial: true),
        AutoRoute(page: SignInRoute.page, path: '/sign-in'),
        AutoRoute(page: SignUpRoute.page, path: '/sign-up'),
        AutoRoute(page: ProductsRoute.page, path: '/products'),
        AutoRoute(page: SellerProductsRoute.page, path: '/seller-products'),
        AutoRoute(page: ProductDetailRoute.page, path: '/product-detail'),
        AutoRoute(page: OrdersRoute.page, path: '/orders'),
        AutoRoute(page: DeliveryRoute.page, path: '/delivery'),
        AutoRoute(page: AddProductRoute.page, path: '/add-product'),
      ];
}
