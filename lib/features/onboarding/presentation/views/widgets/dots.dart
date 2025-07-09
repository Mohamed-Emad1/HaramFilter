import 'package:flutter/widgets.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/active_dot.dart';
import 'package:haram_filter/features/onboarding/presentation/views/widgets/in_active_dot.dart';

class Dots extends StatelessWidget {
  const Dots({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        index == 0 ? ActiveDot() : InActiveDot(),
        index == 1 ? ActiveDot() : InActiveDot(),
        index == 2 ? ActiveDot() : InActiveDot(),
      ],
    );
  }
}
