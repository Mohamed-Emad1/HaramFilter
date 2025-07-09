import 'package:flutter/widgets.dart';
import 'package:haram_filter/core/styles/app_colors.dart';

class ActiveDot extends StatelessWidget {
  const ActiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: AppColors.buttonColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
