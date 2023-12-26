import 'package:flutter/material.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/presentation/view/widget/top_rated_movie_detail_view_body.dart';

class TopRatedMovieDetailView extends StatelessWidget {
  const TopRatedMovieDetailView({super.key, required this.movieDetail});
  final Data movieDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TopRatedMovieDetailViewBody(
        movieDetail: movieDetail,
      ),
    );
  }
}
