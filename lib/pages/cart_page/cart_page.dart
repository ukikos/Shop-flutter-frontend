import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart title'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
              'Cart page body'
          ),
        ),
      ),
    );
  }
}