import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.note_outlined),
          selectedIcon: const Icon(Icons.note, color: AppTheme.primaryColor),
          label: 'Notes',
        ),
        NavigationDestination(
          icon: const Icon(Icons.folder_outlined),
          selectedIcon: const Icon(Icons.folder, color: AppTheme.primaryColor),
          label: 'Folders',
        ),
        NavigationDestination(
          icon: const Icon(Icons.push_pin_outlined),
          selectedIcon: const Icon(Icons.push_pin, color: AppTheme.primaryColor),
          label: 'Pinned',
        ),
        NavigationDestination(
          icon: const Icon(Icons.search_outlined),
          selectedIcon: const Icon(Icons.search, color: AppTheme.primaryColor),
          label: 'Search',
        ),

        ],
      ),
    );
  }
}
