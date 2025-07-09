import 'package:flutter/widgets.dart';
import 'package:haram_filter/core/styles/app_styles.dart';
import 'package:haram_filter/core/utils/app_images.dart';
import 'package:haram_filter/core/utils/widgets/custom_button.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/dots.dart';
import 'package:haram_filter/generated/l10n.dart';

class OnboardingViewSecond extends StatelessWidget {
  const OnboardingViewSecond({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(Assets.imagesOnboardingFirst),
        ),
        SizedBox(height: 16),
        Text(
          S.of(context).onboarding_Second_Title,
          style: AppStyles.headlineMedium28Bold,
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            textAlign: TextAlign.center,
            S.of(context).onboarding_Second_Subtitle,
            style: AppStyles.bodyMedium16Regular,
          ),
        ),
        Spacer(),
        Dots(index: 1),
        SizedBox(height: 12),
        CustomButton(
          text: S.of(context).next,
          onPressed: () {
            pageController.animateToPage(
              2,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
