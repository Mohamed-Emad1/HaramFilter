import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haram_filter/core/styles/app_colors.dart';
import 'package:haram_filter/core/styles/app_styles.dart';
import 'package:haram_filter/features/home/presentation/manager/cubit/model_run_cubit.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/active_dot.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/in_active_dot.dart';
import 'package:haram_filter/generated/l10n.dart';

class ModelState extends StatelessWidget {
  const ModelState({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ModelRunCubit, ModelRunState>(
      builder: (context, state) {
        return Row(
          children: [
            Text(S.of(context).aiRunning, style: AppStyles.bodyMedium16Regular),
            Spacer(),
            state is ModelRunSuccess
                ? ActiveDot(dotColor: AppColors.greenColor)
                : InActiveDot(),
          ],
        );
      },
    );
  }
}
