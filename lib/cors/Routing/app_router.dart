
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/cors/DI/dependency_injection.dart';
import 'package:movie_app/cors/Routing/routes.dart';
import 'package:movie_app/features/Splash/view/splash_view.dart';
import 'package:movie_app/features/home/data/models/character_detail.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/logic/cubit/character_detail_cubit.dart';
import 'package:movie_app/features/home/presentation/view/character_details_view.dart';
import 'package:movie_app/features/home/presentation/view/home_view.dart';
import 'package:movie_app/features/home/presentation/view/top_rated_movie_detail_view.dart';
import 'package:movie_app/features/home/presentation/view/widget/movie_list_with_categor_item.dart';



abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  const SplashView(),
    ),
    GoRoute(
      path: Routes.homeScreen,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: Routes.characterDetails,
      builder: (context, state) =>  BlocProvider(
        create: (context) => getIt<CharacterDetailCubit>(),
        child: CharacterDetailView(
        characterid: state.extra as CharacterData,
      ),
      ),
    ),
    GoRoute(
      path: Routes.topMovieDetail,
      builder: (context, state) => 
      // BlocProvider(
      //   create: (context) => getIt<CharacterDetailCubit>(),
       TopRatedMovieDetailView(
        movieDetail: state.extra as Data,
       ),
      // ),
    ),

    
    // GoRoute(
    //   path: Routes.category,
    //   builder: (context, state) => BlocProvider(
    //     create: (context) => getIt<MoviesWithCategoryCubit>(),
       
    //     child: MovieListWithCategoryItem(
    //       idd: state.extra as int,
    //     ),
    //   ),
    // ),
    // GoRoute(
    //   path: '/search',
    //   builder: (context, state) => SearchView(),
    // ),
  ]);
}
