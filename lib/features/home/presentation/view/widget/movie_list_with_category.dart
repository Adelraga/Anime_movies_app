// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:movie_app/cors/DI/dependency_injection.dart';
// import 'package:movie_app/features/home/logic/cubit/movies_with_category_cubit.dart';
// import 'package:movie_app/features/home/presentation/view/widget/movie_list_with_categor_item.dart';

// class MovieListWithCategory extends StatefulWidget {
//   const MovieListWithCategory({super.key, required this.id});
//   final int id;

//   @override
//   State<MovieListWithCategory> createState() => _MovieListWithCategoryState();
// }

// class _MovieListWithCategoryState extends State<MovieListWithCategory> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => getIt<MoviesWithCategoryCubit>(),
//       child: MovieListWithCategoryItem(
//         idd: widget.id,
//       ),
//     );
//   }
// }
