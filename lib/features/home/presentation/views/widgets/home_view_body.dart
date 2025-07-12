import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_styles.dart';
import 'package:haram_filter/features/home/presentation/views/widgets/model_run_button.dart';
import 'package:haram_filter/features/home/presentation/views/widgets/model_state.dart';
import 'package:haram_filter/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.of(context).haramFilterTitle,
            style: AppStyles.titleMedium18Bold,
          ),
          Text(S.of(context).homeTitle, style: AppStyles.bodyMedium16Regular),
          SizedBox(height: 48),
          ModelRunButton(),
          SizedBox(height: 48),
          ModelState(),
        ],
      ),
    );
  }
}
