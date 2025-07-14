import 'package:flutter/material.dart';
import 'package:haram_filter/features/home/presentation/views/home_view.dart';
import 'package:haram_filter/features/home/presentation/views/main_view.dart';
import 'package:haram_filter/features/home/presentation/views/settings_view.dart';
import 'package:haram_filter/features/onboarding/presentation/views/onboarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    case SettingsView.routeName:
      return MaterialPageRoute(builder: (_) => const SettingsView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (_) => const MainView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
