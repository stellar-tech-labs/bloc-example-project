import 'package:example_bloc/src/core/theme/app_theme.dart';
import 'package:example_bloc/src/features/presentation/color_container_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: const ColorContainerPage(),
    );
  }
}
