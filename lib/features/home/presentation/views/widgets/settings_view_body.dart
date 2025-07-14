import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_styles.dart';
import 'package:haram_filter/features/home/presentation/views/widgets/switcher_widget.dart';
import 'package:haram_filter/features/home/presentation/views/widgets/user_info.dart';
import 'package:haram_filter/generated/l10n.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).account, style: AppStyles.titleMedium18Bold),
          SizedBox(height: 16),
          UserData(),
          SizedBox(height: 16),
          Text(S.of(context).app_settings, style: AppStyles.titleMedium18Bold),
          SwitcherWidget(
            text: S.of(context).language,
            onChanged: (value) {
              // Handle language change
            },
          ),
          SizedBox(height: 8),
          SwitcherWidget(
            text: S.of(context).darkMode,
            onChanged: (value) {
              // Handle dark mode toggle
            },
          ),
        ],
      ),
    );
  }
}
