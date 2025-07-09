import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_colors.dart';
import 'package:haram_filter/core/styles/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(AppColors.buttonColor),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 64, vertical: 12),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: AppStyles.titleSmall16Bold),
    );
  }
}
