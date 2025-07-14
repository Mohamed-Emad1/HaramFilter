import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_colors.dart';
import 'package:haram_filter/core/styles/app_styles.dart';

class SwitcherWidget extends StatelessWidget {
  const SwitcherWidget({super.key, required this.text, this.onChanged});

  final String text;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppStyles.bodyMedium16Regular),
        Switch(
          value: false,
          onChanged: onChanged,
          focusColor: AppColors.buttonColor,
          activeColor: AppColors.buttonColor,
        ),
      ],
    );
  }
}
