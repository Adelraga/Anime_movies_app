
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/cors/Networking/api_service.dart';
import 'package:movie_app/cors/error/failures.dart';
import 'package:movie_app/features/home/data/models/character_detail.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';


class CharacterDetailRepo {
  final ApiService apiService;
  CharacterDetailRepo(this.apiService);
  Future<Either<Failure,CharacterDetail>> getCharacterDetailsById (int id) async {
    try {
      var response = await apiService.getCharacterById(id);
      // Return only the list of characters (Results)
      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
