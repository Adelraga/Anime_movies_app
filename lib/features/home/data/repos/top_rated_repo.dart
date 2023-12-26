
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/cors/Networking/api_service.dart';
import 'package:movie_app/cors/error/failures.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';


class MyRepo {
  final ApiService apiService;
  MyRepo(this.apiService);
  Future<Either<Failure, List<Data>>> getTopRatedMovies () async {
    try {
      var response = await apiService.TopRatedMovies();
    List<Data> characterList = response.data ?? [];
      // Return only the list of characters (Results)
      return right(characterList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
