import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shop/service/auth/auth_client.dart';
import 'package:shop/service/cart/cart_client.dart';
import 'package:shop/service/category/category_client.dart';
import 'package:shop/service/item/item_client.dart';
import 'package:shop/service/user/user_client.dart';

class AppDependencies extends StatelessWidget {
  const AppDependencies({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => Dio()
            ..interceptors.add(
              PrettyDioLogger(),
            )
            ..options.baseUrl = 'http://localhost:8080/api',
        ),
        Provider(
          lazy: false,
          create: (context) => CategoryClient(
            context.read(),
          )
        ),
        Provider(
            lazy: false,
            create: (context) => ItemClient(
              context.read(),
            )
        ),
        Provider(
            lazy: false,
            create: (context) => UserClient(
              context.read(),
            )
        ),
        Provider(
            lazy: false,
            create: (context) => AuthClient(
              context.read(),
            )
        ),
        ChangeNotifierProvider(
            create: (context) => CartClient(),
        )
      ],
      child: child,
    );
  }
}
