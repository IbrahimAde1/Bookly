import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/details/presentation/views/details_view.dart';
import 'package:bookly_app/features/details/presentation/views/manger/details_cubit/book_details_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/details/data/repo/details_repo_impl.dart';
import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/view/splash_veiw.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/detailsView',
      builder: (context, state) => BlocProvider(
        create: (context) => BookDetailsCubit(getIt.get<DetailsRepoImpl>()),
        child: DetailsView(bookModel: state.extra as BookModel),
      ),
    )
  ]);
}
