import 'package:flutter/widgets.dart';
import 'package:haram_filter/core/services/shared_preferences.dart';
import 'package:haram_filter/core/styles/app_styles.dart';
import 'package:haram_filter/core/utils/app_images.dart';
import 'package:haram_filter/core/utils/constants.dart';
import 'package:haram_filter/core/utils/widgets/custom_button.dart';
import 'package:haram_filter/features/home/presentation/views/main_view.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/dots.dart';
import 'package:haram_filter/generated/l10n.dart';

class OnboardingViewThird extends StatelessWidget {
  const OnboardingViewThird({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 5 / 4,
            child: Image.asset(Assets.imagesOnboardingThird),
          ),
        ),
        SizedBox(height: 16),
        Text(
          S.of(context).onboarding_Third_Title,
          style: AppStyles.headlineMedium28Bold,
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            textAlign: TextAlign.center,
            S.of(context).onboarding_Third_Subtitle,
            style: AppStyles.bodyMedium16Regular,
          ),
        ),
        Spacer(),
        Dots(index: 2),
        SizedBox(height: 12),
        CustomButton(
          text: S.of(context).get_started,
          onPressed: () {
            SharedPreferencesSingleton.setBool(kisOnBoardingView, true);
            Navigator.pushNamed(context, MainView.routeName);
          },
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
