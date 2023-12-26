import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/data/repos/character_list.dart';

part 'characters_list_state.dart';

class CharactersListCubit extends Cubit<CharactersListState> {
  final CharacterListRepo characterListRepo;
  CharactersListCubit(this.characterListRepo) : super(CharactersListInitial());
  Future<void> getAllCharactersList() async {
    emit(CharactersListLoading());
    var result = await characterListRepo.getCharactersList();
    result.fold((failure) => {emit(CharactersListFailure(failure.errMessage))},
        (response) => {emit(CharactersListSuccess(response))});
  }
}
