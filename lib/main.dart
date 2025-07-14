import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:haram_filter/core/cubits/language_cubit/language_cubit.dart';
import 'package:haram_filter/core/helper_functions/on_generate_routes.dart';
import 'package:haram_filter/core/services/service_locator.dart';
import 'package:haram_filter/core/services/shared_preferences.dart';
import 'package:haram_filter/core/utils/constants.dart';
import 'package:haram_filter/core/utils/simple_bloc_observer.dart';
import 'package:haram_filter/features/home/presentation/views/main_view.dart';
import 'package:haram_filter/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:haram_filter/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  await SharedPreferencesSingleton.init();
  runApp(const HaramFilter());
}

class HaramFilter extends StatelessWidget {
  const HaramFilter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isOnBoardingViewSeen = SharedPreferencesSingleton.getBool(
      kisOnBoardingView,
    );
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, languageState) {
        final Locale locale = (languageState is EnglishLanguage)
                  ? const Locale('en')
                  : const Locale('ar');
          return MaterialApp(
            locale: locale,
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
            initialRoute: isOnBoardingViewSeen
                ? MainView.routeName
                : OnboardingView.routeName,
          );
        },
      ),
    );
  }
}
