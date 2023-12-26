
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:movie_app/cors/Networking/api_service.dart';
// import 'package:movie_app/cors/error/failures.dart';
// import 'package:movie_app/features/home/data/models/top_rated_movies.dart';


// class MoviesWithCategoryRepo {
//   final ApiService apiService;

//   MoviesWithCategoryRepo(this.apiService);
//   Future<Either<Failure, List<Data>>> getMoviesWithCategory (int categoryId) async {
//     int the_id=0;
//      List<Data> moviesList = [];
//     try {
//       var response = await apiService.TopRatedMovies();
//     List<Data> characterList = response.data ?? [];
//   for (int i = 0; i < characterList.length; i++) {
//         // Check if genreIds is not null and contains the categoryId
//         if (characterList[i].genreIds != null &&
//             characterList[i].genreIds!.contains(categoryId)) {
//           moviesList.add(characterList[i]);
//         }
//       }
//       return right(moviesList);
//      }on Exception catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioException(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }
// }
