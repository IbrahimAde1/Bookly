import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/data/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constans.dart';
import 'core/utils/app_router.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        themeMode: ThemeMode.system,
        theme: ThemeData.dark(
          useMaterial3: true,
        ).copyWith(
          scaffoldBackgroundColor: const Color(kPrimary),
        ),
      ),
    );
  }
}
