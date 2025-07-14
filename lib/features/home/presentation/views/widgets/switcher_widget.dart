import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_colors.dart';
import 'package:haram_filter/core/styles/app_styles.dart';

class SwitcherWidget extends StatelessWidget {
  const SwitcherWidget({
    super.key,
    required this.text,
    this.onChanged,
    required this.value,
  });

  final String text;
  final void Function(bool)? onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppStyles.bodyMedium16Regular),
        Switch(
          value: value,
          onChanged: onChanged,
          focusColor: AppColors.buttonColor,
          activeColor: AppColors.buttonColor,
        ),
      ],
    );
  }
}
