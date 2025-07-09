import 'package:flutter/material.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/onboarding_view_first.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/onboarding_view_second.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/onboarding_view_third.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});
  static const String routeName = '/splash';

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemCount: 3,
          itemBuilder: (context, index) {
            if (index == 0) {
              return  OnboardingViewFirst(
                pageController: _pageController,
              );
            } else if (index == 1) {
              return  OnboardingViewSecond(
                pageController: _pageController,
              );
            } else {
              return  OnboardingViewThird(
                pageController: _pageController,
              );
            }
          },
        ),
      ),
    );
  }
}
