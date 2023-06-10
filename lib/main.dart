import 'package:flutter/material.dart';
import 'constans.dart';
import 'core/utils/app_router.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      themeMode: ThemeMode.system,
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: const Color(kPrimary),
      ),
    );
  }
}
