import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/data/repos/top_rated_repo.dart';

part 'top_rated_state.dart';

class TopRatedCubit extends Cubit<TopRatedState> {
  final MyRepo topRatedRepo;
  TopRatedCubit(this.topRatedRepo) : super(TopRatedInitial());
   List<Data> allAnimeList=<Data>[] ;
  Future<void> getTopRatedMovies() async {
    emit(TopRatedLoading());
    var result = await topRatedRepo.getTopRatedMovies();
    result.fold((failure) => {emit(TopRatedFailure(failure.errMessage))},
        (response) => {emit(TopRatedSuccess(response))});
  }
}
