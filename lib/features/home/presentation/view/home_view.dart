import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cors/Themeing/styles.dart';
import 'package:movie_app/features/home/logic/top_rated_cubit/top_rated_cubit.dart';
import 'package:movie_app/features/home/presentation/view/widget/home_view_body.dart';
import 'package:movie_app/features/home/presentation/view/widget/top_moview_slider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<TopRatedCubit>(context).getTopRatedMovies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AnimeCorn",
          style: Styles.font22Black700Weight,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(176, 0, 91, 229),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 1,
                        color: Color.fromARGB(255, 202, 202, 202))
                  ]),
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: HomeViewBody(),
    );
  }
}
