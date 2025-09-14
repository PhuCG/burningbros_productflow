import 'package:auto_route/auto_route.dart';
import '../../ui/screens/main_screen.dart';
import '../../ui/screens/product_list_screen.dart';
import '../../ui/screens/favorite_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      initial: true,
      children: [
        AutoRoute(page: ProductListRoute.page, path: 'products'),
        AutoRoute(page: FavoriteRoute.page, path: 'favorites'),
      ],
    ),
  ];
}
