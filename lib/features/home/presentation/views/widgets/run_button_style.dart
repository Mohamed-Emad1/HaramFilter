import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_colors.dart';
import 'package:haram_filter/core/styles/app_styles.dart';
import 'package:haram_filter/features/home/presentation/manager/cubit/model_run_cubit.dart';
import 'package:haram_filter/generated/l10n.dart';

class RunButtonStyle extends StatelessWidget {
  const RunButtonStyle({super.key, required this.state});

  final ModelRunState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.buttonColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 76, 76, 76),
            offset: Offset(0, 7),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(64),
        child: Center(
          child: state is ModelRunLoading
              ? CircularProgressIndicator(color: Colors.white)
              : Text(
                  state is ModelRunSuccess
                      ? S.of(context).stopeModel
                      : S.of(context).runHaramFilter,
                  style: AppStyles.titleSmall16Bold,
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}
