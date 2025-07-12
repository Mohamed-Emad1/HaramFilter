import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_styles.dart';

void buildBarMessage(BuildContext context, final String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message, style: AppStyles.titleLarge22Bold)),
  );
}
