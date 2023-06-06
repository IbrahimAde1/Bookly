import 'package:bookly_app/features/splash/presentation/view/home_veiw.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constans.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(scaffoldBackgroundColor: const Color(kPrimary)),
      home: const SplashView(),
    );
  }
}
