import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailImagePanar extends StatelessWidget {
  const MovieDetailImagePanar({super.key, required this.movieDetail});
  final Data movieDetail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(16)),
            child: CachedNetworkImage(
              imageUrl: "${movieDetail.images?.jpg?.image_url}",
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.7,
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Color.fromARGB(255, 124, 20, 20),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            Uri url = Uri.parse(movieDetail.trailer?.url ?? "");
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 1.7,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(61, 64, 64, 64), // Start color
                  Color.fromARGB(135, 16, 16, 16), // End color
                ],
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ),
        Positioned(
          top: 180,
          right: 99,
          child: Center(
            child: GestureDetector(
              onTap: () async {
                Uri url = Uri.parse(movieDetail.trailer?.url ?? "");
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              child: Lottie.asset(
                'assets/ss.json',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
          ),
        )
      ],
    );
  }
}
