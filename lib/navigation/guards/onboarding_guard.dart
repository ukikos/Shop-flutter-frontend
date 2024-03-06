import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/navigation/app_router.dart';

class OnboardingGuard extends AutoRouteGuard {

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isOnboarded = prefs.getBool('isOnboarded');
    if (isOnboarded == true) {
      resolver.next(true);
    } else {
      resolver.redirect(OnboardingRoute());
    }
  }
}