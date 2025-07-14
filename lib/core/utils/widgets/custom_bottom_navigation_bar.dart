import 'package:flutter/material.dart';
import 'package:haram_filter/core/styles/app_colors.dart';
import 'package:haram_filter/generated/l10n.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: AppColors.iconColor,
      iconSize: 24,
      selectedFontSize: 16,
      selectedIconTheme: IconThemeData(
        size: 32, // Size for selected icon
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: S.of(context).home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: S.of(context).settings,
        ),
      ],
    );
  }
}
