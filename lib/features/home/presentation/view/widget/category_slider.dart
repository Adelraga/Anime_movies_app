import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/cors/Helpers/constants.dart';
import 'package:movie_app/cors/Routing/routes.dart';
import 'package:movie_app/cors/Themeing/styles.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/presentation/view/widget/errorhandelinlist.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({
    Key? key,
    required this.allAnimeList,
    required this.animeCategory,
  }) : super(key: key);

  final List<Data> allAnimeList;
  final List<Data> animeCategory;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 500,
              child: animeCategory.isNotEmpty
                  ? CarouselSlider.builder(
                      itemCount: animeCategory.isEmpty
                          ? allAnimeList.length
                          : animeCategory.length,
                      itemBuilder: (context, itemIndex, pageViewIndex) {
                        String posterPath = "";
                        String title = "";
                        String status = "";
                        final List<Data> sourceList = animeCategory.isEmpty
                            ? allAnimeList
                            : animeCategory;

                        if (itemIndex >= 0 && itemIndex < sourceList.length) {
                          posterPath =
                              sourceList[itemIndex].images?.jpg?.image_url ??
                                  "";
                          title = sourceList[itemIndex].title ?? "";
                          status = sourceList[itemIndex].status ?? "";
                        } else {
                          // If itemIndex is out of range, show a default poster or empty container
                          posterPath =
                              'URL_TO_YOUR_DEFAULT_IMAGE'; // Replace with a default image URL or set it to an empty string
                        }

                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3.2,
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.white,
                                      child: GestureDetector(
                                        onTap: () {
                                          GoRouter.of(context).push(
                                              Routes.topMovieDetail,
                                              extra: animeCategory.isEmpty
                                                  ? allAnimeList[itemIndex]
                                                  : animeCategory[itemIndex]);
                                        },
                                        child: CachedNetworkImage(
                                          imageUrl: posterPath,
                                          fit: BoxFit.cover,
                                          errorWidget: (context, url, error) =>
                                              const Icon(
                                            Icons.error,
                                            color: Color.fromARGB(
                                                255, 124, 20, 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Column(
                                  children: [
                                    Text(
                                      title,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      status,
                                      style: Styles.font13black24bold,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: 300,
                        viewportFraction: 0.55,
                        pageSnapping: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(seconds: 2),
                      ),
                    )
                  : Slidererror()),
        ],
      ),
    );
  }
}
