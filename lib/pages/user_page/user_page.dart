import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User title'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
              'User page body'
          ),
        ),
      ),
    );
  }
}