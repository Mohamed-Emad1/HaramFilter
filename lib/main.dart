import 'package:flutter/material.dart';
import 'package:haram_filter/core/helper_functions/on_generate_routes.dart';
import 'package:haram_filter/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const HaramFilter());
}

class HaramFilter extends StatelessWidget {
  const HaramFilter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
            onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
