import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories title'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            'Categories page body'
          ),
        ),
      ),
    );
  }
}
