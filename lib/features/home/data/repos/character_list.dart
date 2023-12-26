
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/cors/Networking/api_service.dart';
import 'package:movie_app/cors/error/failures.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';


class CharacterListRepo {
  final ApiService apiService;
  CharacterListRepo(this.apiService);
  Future<Either<Failure, List<CharacterData>>> getCharactersList () async {
    try {
      var response = await apiService.getAllCharacters();
    List<CharacterData> characterList = response.data?? [];
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
