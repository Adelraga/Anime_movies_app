import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/cors/Helpers/constants.dart';
import 'package:movie_app/cors/Routing/routes.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/logic/top_rated_cubit/top_rated_cubit.dart';
import 'package:movie_app/features/home/presentation/view/category_list_view.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider(
      {super.key,
      required this.topMoviewList,
      required this.animation,
      required this.autoPlay});
  final List<Data> topMoviewList;
  final bool animation;
  final bool autoPlay;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<TopRatedCubit>().allAnimeList = widget.topMoviewList;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: widget.topMoviewList.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(
                            Routes.topMovieDetail,extra: widget.topMoviewList[itemIndex]
                          );
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width * 1.2,
                            child: CachedNetworkImage(
                              imageUrl: widget.topMoviewList[itemIndex].images
                                      ?.jpg?.image_url ??
                                  "",
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) => const Icon(
                                Icons.error,
                                color: Color.fromARGB(255, 124, 20, 20),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
                options: CarouselOptions(
                  height: 300,
                  autoPlay: widget.autoPlay,
                  viewportFraction: 0.55,
                  enlargeCenterPage: widget.animation,
                  pageSnapping: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                ),
              )),
        ],
      ),
    );
  }
}
