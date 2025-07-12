import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haram_filter/core/helper_functions/build_bar_message.dart';
import 'package:haram_filter/core/styles/app_colors.dart';
import 'package:haram_filter/features/home/presentation/manager/cubit/model_run_cubit.dart';
import 'package:haram_filter/features/home/presentation/views/widgets/run_button_style.dart';
import 'package:haram_filter/generated/l10n.dart';

class ModelRunButton extends StatefulWidget {
  const ModelRunButton({super.key});

  @override
  State<ModelRunButton> createState() => _ModelRunButtonState();
}

class _ModelRunButtonState extends State<ModelRunButton>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 3.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _opacityAnimation = Tween<double>(begin: 0.8, end: 0.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _animationController.reset();
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ModelRunCubit, ModelRunState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            // Background animation
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.buttonColor.withValues(
                        alpha: _opacityAnimation.value,
                      ),
                    ),
                  ),
                );
              },
            ),
            // Main button
            GestureDetector(
              onTap: () {
                _startAnimation();
                BlocProvider.of<ModelRunCubit>(context).runModel();
                if (state is ModelRunLoading) {
                  // context.read<ModelRunCubit>().runModel();
                } else if (state is ModelRunSuccess) {
                  buildBarMessage(context, S.of(context).aiRunning);
                } else if (state is ModelRunFailure) {
                  buildBarMessage(context, S.of(context).failedToRunAI);
                }
              },
              child: RunButtonStyle(state: state),
            ),
          ],
        );
      },
    );
  }
}
