import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/cors/Networking/api_service.dart';
import 'package:movie_app/cors/error/failures.dart';
import 'package:movie_app/features/home/data/models/category_of_movies.dart' as CategoryModel;
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';

class CategoryListRepo {
  final ApiService apiService;
  CategoryListRepo(this.apiService);
  Future<Either<Failure, List<CategoryModel.Data>>> getCategoryList() async {
    try {
      var response = await apiService.getAllCategory();
       List<CategoryModel.Data> Category = response.data ?? [];

      return right(Category);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
