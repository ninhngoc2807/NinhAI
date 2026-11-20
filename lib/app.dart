import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/home/home_screen.dart';

class NinhAiApp extends StatelessWidget {
  const NinhAiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninh AI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
