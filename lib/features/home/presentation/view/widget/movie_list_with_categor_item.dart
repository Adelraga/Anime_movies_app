import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/presentation/view/widget/category_slider.dart';
import 'package:movie_app/features/home/presentation/view/widget/top_movies_slider_item.dart';

class MovieListWithCategoryItem extends StatelessWidget {
  const MovieListWithCategoryItem({
    Key? key,
    required this.allAnimeList,
    required this.animeCategory,
  }) : super(key: key);

  final List<Data> allAnimeList;
  final List<Data> animeCategory;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: CategorySlider(
                allAnimeList: allAnimeList,
                animeCategory: animeCategory,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
