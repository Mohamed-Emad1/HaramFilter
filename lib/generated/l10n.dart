// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Smart Detection`
  String get onboardingTitle {
    return Intl.message(
      'Smart Detection',
      name: 'onboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Automatically scan UI content to block haram images and videos.`
  String get onboardingSubtitle {
    return Intl.message(
      'Automatically scan UI content to block haram images and videos.',
      name: 'onboardingSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Get started`
  String get get_started {
    return Intl.message('Get started', name: 'get_started', desc: '', args: []);
  }

  /// `Real-time AI Filtering`
  String get onboarding_Second_Title {
    return Intl.message(
      'Real-time AI Filtering',
      name: 'onboarding_Second_Title',
      desc: '',
      args: [],
    );
  }

  /// `Run the Haram Filter AI model with a tap — get instant feedback whether you're clean or need revision.`
  String get onboarding_Second_Subtitle {
    return Intl.message(
      'Run the Haram Filter AI model with a tap — get instant feedback whether you\'re clean or need revision.',
      name: 'onboarding_Second_Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Privacy First`
  String get onboarding_Third_Title {
    return Intl.message(
      'Privacy First',
      name: 'onboarding_Third_Title',
      desc: '',
      args: [],
    );
  }

  /// `All processing happens on-device, ensuring your data stays private and secure.`
  String get onboarding_Third_Subtitle {
    return Intl.message(
      'All processing happens on-device, ensuring your data stays private and secure.',
      name: 'onboarding_Third_Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcomeTitle {
    return Intl.message('Welcome', name: 'welcomeTitle', desc: '', args: []);
  }

  /// `Ready to build with peace of mind?`
  String get homeTitle {
    return Intl.message(
      'Ready to build with peace of mind?',
      name: 'homeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Haram Filter`
  String get haramFilterTitle {
    return Intl.message(
      'Haram Filter',
      name: 'haramFilterTitle',
      desc: '',
      args: [],
    );
  }

  /// `Run Haram Filter `
  String get runHaramFilter {
    return Intl.message(
      'Run Haram Filter ',
      name: 'runHaramFilter',
      desc: '',
      args: [],
    );
  }

  /// `AI is running`
  String get aiRunning {
    return Intl.message('AI is running', name: 'aiRunning', desc: '', args: []);
  }

  /// `Please wait while the AI processes the content.`
  String get aiRunningSubtitle {
    return Intl.message(
      'Please wait while the AI processes the content.',
      name: 'aiRunningSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Failed to run AI`
  String get failedToRunAI {
    return Intl.message(
      'Failed to run AI',
      name: 'failedToRunAI',
      desc: '',
      args: [],
    );
  }

  /// `Stop Haram Filter`
  String get stopeModel {
    return Intl.message(
      'Stop Haram Filter',
      name: 'stopeModel',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message('Dark Mode', name: 'darkMode', desc: '', args: []);
  }

  /// `App Settings`
  String get app_settings {
    return Intl.message(
      'App Settings',
      name: 'app_settings',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
