import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cors/Themeing/styles.dart';
import 'package:movie_app/features/home/presentation/view/character_list_view.dart';
import 'package:movie_app/features/home/presentation/view/widget/category_list_item.dart';
import 'package:movie_app/features/home/presentation/view/category_list_view.dart';
import 'package:movie_app/features/home/presentation/view/widget/movie_list_with_category.dart';
import 'package:movie_app/features/home/presentation/view/widget/top_moview_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopMoviesSlider(
            animation: true,
            autoPlay: true,
          ),
          CategoryView(),
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 10),
            child: Text(
              "Top Anime Characters",
              style: Styles.font15black24bold,
            ),
          ),
          CharacterListView(),
          SizedBox(
            height: 20,
          )
          // Padding(
          //   padding: EdgeInsets.all(15),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         "NOW PLAYGIN",
          //         style: Styles.font12black24bold,
          //       ),
          // TopMoviesSlider(
          //   animation: false,
          //   autoPlay: false,
          // ),
        ],
      ),
    );
  }
}
