import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/cors/Routing/routes.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/logic/category_list_cubit/category_list_cubit.dart';
import 'package:movie_app/features/home/logic/top_rated_cubit/top_rated_cubit.dart';
import 'package:movie_app/features/home/presentation/view/widget/movie_list_with_categor_item.dart';
import 'package:movie_app/features/home/presentation/view/widget/movie_list_with_category.dart';

class CustomCateoryListView extends StatefulWidget {
  const CustomCateoryListView({Key? key,}) : super(key: key);


  @override
  State<CustomCateoryListView> createState() => _CustomCateoryListViewState();
}

class _CustomCateoryListViewState extends State<CustomCateoryListView> {
 int selectedIndex = 0; // Track the selected index
  late List<Data> searchAnimeCategory;

  void addSearchedForItemsToSearchedList(int id) {
    searchAnimeCategory = context
        .read<TopRatedCubit>()
        .allAnimeList
        .where((anime) => anime.genres?.any((e) => e.mal_id == id) ?? false)
        .toList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoryListCubit>(context).getCategoryList();
    // Set default content for searchAnimeCategory
    addSearchedForItemsToSearchedList(1);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryListCubit, CategoryListState>(
      builder: (context, state) {
        if (state is CategoryListSuccess) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                child: ListView.builder(
                  itemCount: state.category.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index; // Update the selected index
                          });
                          addSearchedForItemsToSearchedList(
                              state.category[index].mal_id ?? 1);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Color.fromARGB(255, 0, 68, 169)
                                  : const Color.fromARGB(255, 185, 185, 185),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(9),
                              child: Text(
                                "${state.category[index].name ?? "err"}",
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              MovieListWithCategoryItem(
                allAnimeList: context.read<TopRatedCubit>().allAnimeList,
                animeCategory: searchAnimeCategory,
              )
            ],
          );
        } else if (state is CategoryListFailure) {
          return Text("${state.errMessage}");
        }
        return Center(child: Text(" Loading... "));
      },
    );
  }
}
