import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:haram_filter/core/helper_functions/on_generate_routes.dart';
import 'package:haram_filter/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:haram_filter/generated/l10n.dart';

void main() {
  runApp(const HaramFilter());
}

class HaramFilter extends StatelessWidget {
  const HaramFilter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
                  localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

      debugShowCheckedModeBanner: false,
      title: 'Haram Filter',
      onGenerateRoute: onGenerateRoute,
      initialRoute: OnboardingView.routeName,
    );
  }
}
