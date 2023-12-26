import 'package:dio/dio.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/cors/Networking/api_constants.dart';
import 'package:movie_app/features/home/data/models/category_of_movies.dart';
import 'package:movie_app/features/home/data/models/character_detail.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl) //BaseUrl
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.topRated) // the endpoint
  Future<TopAnime> TopRatedMovies();
  
  @GET(ApiConstants.category) // the endpoint
  Future<AnimeCategory> getAllCategory();

  @GET(ApiConstants.characters) // the endpoint
  Future<CharactersList> getAllCharacters();


  @GET('characters/{id}') // the endpoint
  Future<CharacterDetail > getCharacterById(@Path('id') int id);

  // @POST('/users') // the endpoint
  // Future<Users> createNewUser(
  //     @Body() Users newUser, @Header('Authorization') String token);

  // @DELETE('/users/{id}') // the endpoint
  // Future<dynamic> deleteUser(
  //     @Path('id') int id, @Header('Authorization') String token);
}

// to create the web_services.g.dart use this commend ==>"flutter pub run build_runner build"

// note i must write this line part 'web_services.g.dart'; and the name must be the same name of the file 
// web_services.dart