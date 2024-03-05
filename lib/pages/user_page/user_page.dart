import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/navigation/app_router.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({@PathParam('counter') this.pageCounter = 1});

  final int pageCounter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User title'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                  'User page body $pageCounter'
              ),
            ),
            ElevatedButton(
              onPressed: () => {
                context.router.push(UserRoute(pageCounter: pageCounter + 1))
              },
              child:  Text(
                'Go to page ${pageCounter + 1}'
              ),
            )
          ],
        ),
      ),
    );
  }
}