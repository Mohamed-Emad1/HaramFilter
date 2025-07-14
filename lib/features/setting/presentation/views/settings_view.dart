import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:haram_filter/features/setting/presentation/views/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SettingsViewBody(),
      ),
    );
  }
}
