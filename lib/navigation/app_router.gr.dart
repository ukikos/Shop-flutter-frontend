// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartPage(),
      );
    },
    CartTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartTabPage(),
      );
    },
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    CategoriesChildRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesChildRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoriesChildPage(
          id: args.id,
          category: args.category,
        ),
      );
    },
    CategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoriesPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ItemDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ItemDetailsRouteArgs>(
          orElse: () => ItemDetailsRouteArgs(itemId: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ItemDetailsPage(itemId: args.itemId),
      );
    },
    ItemsRoute.name: (routeData) {
      final args = routeData.argsAs<ItemsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ItemsPage(
          id: args.id,
          category: args.category,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OnboardingPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterPage(),
      );
    },
    UserRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserPage(),
      );
    },
  };
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartTabPage]
class CartTab extends PageRouteInfo<void> {
  const CartTab({List<PageRouteInfo>? children})
      : super(
          CartTab.name,
          initialChildren: children,
        );

  static const String name = 'CartTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoriesChildPage]
class CategoriesChildRoute extends PageRouteInfo<CategoriesChildRouteArgs> {
  CategoriesChildRoute({
    required int id,
    required Category category,
    List<PageRouteInfo>? children,
  }) : super(
          CategoriesChildRoute.name,
          args: CategoriesChildRouteArgs(
            id: id,
            category: category,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CategoriesChildRoute';

  static const PageInfo<CategoriesChildRouteArgs> page =
      PageInfo<CategoriesChildRouteArgs>(name);
}

class CategoriesChildRouteArgs {
  const CategoriesChildRouteArgs({
    required this.id,
    required this.category,
  });

  final int id;

  final Category category;

  @override
  String toString() {
    return 'CategoriesChildRouteArgs{id: $id, category: $category}';
  }
}

/// generated route for
/// [CategoriesPage]
class CategoriesRoute extends PageRouteInfo<void> {
  const CategoriesRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ItemDetailsPage]
class ItemDetailsRoute extends PageRouteInfo<ItemDetailsRouteArgs> {
  ItemDetailsRoute({
    required int itemId,
    List<PageRouteInfo>? children,
  }) : super(
          ItemDetailsRoute.name,
          args: ItemDetailsRouteArgs(itemId: itemId),
          rawPathParams: {'id': itemId},
          initialChildren: children,
        );

  static const String name = 'ItemDetailsRoute';

  static const PageInfo<ItemDetailsRouteArgs> page =
      PageInfo<ItemDetailsRouteArgs>(name);
}

class ItemDetailsRouteArgs {
  const ItemDetailsRouteArgs({required this.itemId});

  final int itemId;

  @override
  String toString() {
    return 'ItemDetailsRouteArgs{itemId: $itemId}';
  }
}

/// generated route for
/// [ItemsPage]
class ItemsRoute extends PageRouteInfo<ItemsRouteArgs> {
  ItemsRoute({
    required int id,
    required Category category,
    List<PageRouteInfo>? children,
  }) : super(
          ItemsRoute.name,
          args: ItemsRouteArgs(
            id: id,
            category: category,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ItemsRoute';

  static const PageInfo<ItemsRouteArgs> page = PageInfo<ItemsRouteArgs>(name);
}

class ItemsRouteArgs {
  const ItemsRouteArgs({
    required this.id,
    required this.category,
  });

  final int id;

  final Category category;

  @override
  String toString() {
    return 'ItemsRouteArgs{id: $id, category: $category}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserPage]
class UserRoute extends PageRouteInfo<void> {
  const UserRoute({List<PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
