import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/cors/Themeing/styles.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/presentation/view/widget/movie_detail_description.dart';
import 'package:movie_app/features/home/presentation/view/widget/movie_detail_image_panar.dart';

class TopRatedMovieDetailViewBody extends StatelessWidget {
  const TopRatedMovieDetailViewBody({super.key, required this.movieDetail});
  final Data movieDetail;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MovieDetailImagePanar(
            movieDetail: movieDetail,
          ),
          SizedBox(
            height: 20,
          ),
          MoviewDetailDescription(
            movieDetail: movieDetail,
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "ScreenShot",
              style: Styles.font15black24bold,
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                imageUrl: "${movieDetail.images?.jpg?.image_url}",
                fit: BoxFit.cover,
                width: 400,
                height: 200,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Color.fromARGB(255, 124, 20, 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                imageUrl: "${movieDetail.trailer?.images?.image_url}",
                fit: BoxFit.cover,
                width: 400,
                height: 200,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Color.fromARGB(255, 124, 20, 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
