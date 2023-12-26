import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/features/home/data/models/category_of_movies.dart';



class BookRating extends StatelessWidget {
  const BookRating({this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(rating.toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
