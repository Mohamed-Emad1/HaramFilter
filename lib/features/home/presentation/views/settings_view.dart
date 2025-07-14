import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_styles.dart';
import 'package:haram_filter/features/home/presentation/views/widgets/settings_view_body.dart';
import 'package:haram_filter/generated/l10n.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static const String routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings, style: AppStyles.titleMedium18Bold),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(child: SettingsViewBody()),
    );
  }
}
