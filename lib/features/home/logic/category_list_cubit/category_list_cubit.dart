import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/features/home/data/models/category_of_movies.dart';
import 'package:movie_app/features/home/data/repos/category_list_repo.dart';

part 'category_list_state.dart';

class CategoryListCubit extends Cubit<CategoryListState> {
  final CategoryListRepo categoryListRepo;
  CategoryListCubit(this.categoryListRepo) : super(CategoryListInitial());

    Future<void> getCategoryList() async {
    emit(CategoryListLoading());
    var result = await categoryListRepo.getCategoryList();
    result.fold((failure) => {emit(CategoryListFailure(failure.errMessage))},
        (response) => {emit(CategoryListSuccess(response))});
  }
}
