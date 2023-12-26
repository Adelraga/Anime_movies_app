import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/cors/Themeing/styles.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/presentation/view/widget/BookRating.dart';

class ProductionDetail extends StatelessWidget {
  const ProductionDetail({super.key, required this.movieDetail});
  final Data movieDetail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "Title Of Movie",
                  style: Styles.font18black24bold,
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 130,
                  child: Text(
                    "${movieDetail.title}",
                    style: Styles.font11blueDarkbold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 45.w,
            ),
            Column(
              children: [
                Text(
                  "Status",
                  style: Styles.font18black24bold,
                ),
                SizedBox(height: 5),
                Text(
                  "${movieDetail.status}",
                  style: Styles.font11blueDarkbold,
                ),
              ],
            ),
            SizedBox(
              width: 45.w,
            ),
            Column(
              children: [
                Text(
                  "Rating",
                  style: Styles.font18black24bold,
                ),
                SizedBox(height: 5),
                BookRating(
                  rating: movieDetail.score ?? 2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
