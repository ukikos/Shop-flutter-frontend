import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/navigation/app_router.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage();

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Регистрация',
      onFinish: () async {
        final router = context.router;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        bool done = await prefs.setBool('isOnboarded', true);
        if (done) {
          router.replaceAll([
            HomeRoute(
                children: [
                  ProfileTab(
                      children: [
                        RegisterRoute(),
                      ]
                  ),
                ]
            ),
          ]);
        }
      },
      skipTextButton: const Text('Пропустить'),
      trailing: const Text('Войти'),
      trailingFunction: () async {
        final router = context.router;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        bool done = await prefs.setBool('isOnboarded', true);
        if (done) {
          router.replaceAll([
            HomeRoute(
                children: [
                  ProfileTab(
                      children: [
                        LoginRoute(),
                      ]
                  ),
                ]
            ),
          ]);
        }
      },
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/images/onboarding.png',
          height: 400,
        ),
        Image.asset(
          'assets/images/onboarding.png',
          height: 400,
        ),
        Image.asset(
          'assets/images/onboarding.png',
          height: 400,
        )
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Expanded(
                child: Text(
                  'ПОКУПАЙТЕ ТЕХНИКУ НЕ ВЫХОДЯ ИЗ ДОМА',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Expanded(
                child: Text(
                  'УДОБНАЯ НАВИГАЦИЯ ВНУТРИ МАГАЗИНА',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Expanded(
                child: Text(
                  'ПРИЯТНОЙ РАБОТЫ С ПРИЛОЖЕНИЕМ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}