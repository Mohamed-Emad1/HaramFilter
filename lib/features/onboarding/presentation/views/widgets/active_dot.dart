import 'package:flutter/widgets.dart';
import 'package:haram_filter/core/styles/app_colors.dart';

class ActiveDot extends StatelessWidget {
  const ActiveDot({super.key, this.dotColor = AppColors.buttonColor});
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: dotColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
