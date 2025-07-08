import 'package:flutter/material.dart';
import 'package:haram_filter/features/splash/presentation/views/splash_view.dart';


Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    // case OnboardingView.routeName:
    //   return MaterialPageRoute(builder: (_) => const OnboardingView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
