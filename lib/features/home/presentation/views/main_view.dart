import 'package:flutter/material.dart';
import 'package:haram_filter/core/utils/widgets/custom_bottom_navigation_bar.dart';
import 'package:haram_filter/features/home/presentation/views/home_view.dart';
import 'package:haram_filter/features/home/presentation/views/settings_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = '/main';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;

  final List<Widget> pages = const [HomeView(), SettingsView()];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
      ),
    );
  }
}
