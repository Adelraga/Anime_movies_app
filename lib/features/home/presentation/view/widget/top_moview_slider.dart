import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/logic/top_rated_cubit/top_rated_cubit.dart';
import 'package:movie_app/features/home/presentation/view/category_list_view.dart';
import 'package:movie_app/features/home/presentation/view/widget/top_movies_slider_item.dart';

class TopMoviesSlider extends StatefulWidget {
  const TopMoviesSlider({super.key, required this.animation, required this.autoPlay,});
 final bool animation ;
 final bool autoPlay ;

  @override
  State<TopMoviesSlider> createState() => _TopMoviesSliderState();
}

class _TopMoviesSliderState extends State<TopMoviesSlider> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedCubit, TopRatedState>(
      builder: (context, state) {
        if (state is TopRatedSuccess) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 20),
                  child: CustomSlider(
                    animation:widget.animation,
                    autoPlay:widget.autoPlay ,
                    topMoviewList: state.topRatedList,
                  ),
                ),
                
              ],
            ),
          );
        }
        if (state is TopRatedFailure) {
          return Text(state.errMessage.toString());
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
