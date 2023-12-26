import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/cors/Themeing/styles.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/presentation/view/widget/movie_detail_production_detail.dart';

class MoviewDetailDescription extends StatelessWidget {
  const MoviewDetailDescription({super.key, required this.movieDetail});
  final Data movieDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "OverView",
            style: Styles.font18black24bold,
          ),
          SizedBox(height: 8.h),
          Text(
            "${movieDetail.synopsis}",
            style: Styles.font15Weight400,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          SizedBox(height: 16.h),
          ProductionDetail(movieDetail:movieDetail)
        ],
      ),
    );
  }
}
