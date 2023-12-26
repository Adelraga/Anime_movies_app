import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/cors/DI/dio_factory_logger.dart';
import 'package:movie_app/cors/Networking/api_service.dart';
import 'package:movie_app/features/home/data/repos/category_list_repo.dart';
import 'package:movie_app/features/home/data/repos/character_detail_repo.dart';
import 'package:movie_app/features/home/data/repos/character_list.dart';
import 'package:movie_app/features/home/data/repos/movies_with_category.dart';
import 'package:movie_app/features/home/data/repos/top_rated_repo.dart';
import 'package:movie_app/features/home/logic/category_list_cubit/category_list_cubit.dart';
import 'package:movie_app/features/home/logic/characters_list_cubit/characters_list_cubit.dart';
import 'package:movie_app/features/home/logic/cubit/character_detail_cubit.dart';
import 'package:movie_app/features/home/logic/top_rated_cubit/top_rated_cubit.dart';

final getIt = GetIt.instance;
void initGetIt() {
  Dio dio = DioFactory.getDio();
  // singleton is the used of method we take acopy of it many times so we make it one time and reused it  /// here a singleton for apiservice
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  /// here a singleton for apiservice

  // TOP Rated
  getIt.registerLazySingleton<TopRatedCubit>(() => TopRatedCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));

  //categorylist
  getIt.registerLazySingleton<CategoryListCubit>(
      () => CategoryListCubit(getIt()));
  getIt
      .registerLazySingleton<CategoryListRepo>(() => CategoryListRepo(getIt()));
  //character list
  getIt.registerLazySingleton<CharactersListCubit>(
      () => CharactersListCubit(getIt()));
  getIt
      .registerLazySingleton<CharacterListRepo>(() => CharacterListRepo(getIt()));
  //character Details
  getIt.registerLazySingleton<CharacterDetailCubit>(
      () => CharacterDetailCubit(getIt()));
  getIt
      .registerLazySingleton<CharacterDetailRepo>(() => CharacterDetailRepo(getIt()));
  
  // // movies with category
  // getIt.registerLazySingleton<MoviesWithCategoryCubit>(
  //     () => MoviesWithCategoryCubit(getIt()));
  // getIt
  //     .registerLazySingleton<MoviesWithCategoryRepo>(() => MoviesWithCategoryRepo(getIt()));
}
