import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/features/home/data/models/character_detail.dart';
import 'package:movie_app/features/home/data/repos/character_detail_repo.dart';

part 'character_detail_state.dart';

class CharacterDetailCubit extends Cubit<CharacterDetailState> {
  final CharacterDetailRepo characterDetailRepo;
  CharacterDetailCubit(this.characterDetailRepo)
      : super(CharacterDetailInitial());
  Future<void> getCharacterDetails(int id) async {
    emit(CharacterDetailLoading());
    var result = await characterDetailRepo.getCharacterDetailsById(id);
    result.fold((failure) => {emit(CharacterDetailFailure(failure.errMessage))},
        (response) => {emit(CharacterDetailSuccess(response))});
  }
}
