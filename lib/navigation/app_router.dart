import 'package:auto_route/auto_route.dart';
import 'package:shop/pages/home_page/home_page.dart';
import 'package:shop/pages/categories_page/categories_page.dart';
import 'package:shop/pages/categories_page/categories_child_page.dart';
import 'package:shop/pages/cart_page/cart_page.dart';
import 'package:shop/pages/user_page/user_page.dart';
import 'package:shop/pages/items_page/items_page.dart';
import 'package:shop/model/category/category.dart';
import 'package:shop/pages/item_page/item_details_page.dart';
import 'package:shop/pages/auth_page/login_page.dart';
import 'package:shop/pages/auth_page/register_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: HomeRoute.page,
      children: [
        AutoRoute(
          path: 'catalog-tab',
          page: CatalogTab.page,
          initial: true,
          children: [
            AutoRoute(
              path: 'categories',
              page: CategoriesRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: 'categories/:id',
              page: CategoriesChildRoute.page,
            ),
            AutoRoute(
              path: 'items/:id',
              page: ItemsRoute.page,
            ),
            AutoRoute(
              path: 'item/:id',
              page: ItemDetailsRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: 'cart-tab',
          page: CartTab.page,
          children: [
            AutoRoute(
              path: 'cart',
              page: CartRoute.page,
              initial: true,
            ),
          ],
        ),
        AutoRoute(
          path: 'profile-tab',
          page: ProfileTab.page,
          children: [
            AutoRoute(
              initial: true,
              path: 'user',
              page: UserRoute.page,
            ),
            AutoRoute(
              path: 'login',
              page: LoginRoute.page,
            ),
            AutoRoute(
              path: 'register',
              page: RegisterRoute.page,
            ),
          ],
        ),
      ],
    )
  ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
