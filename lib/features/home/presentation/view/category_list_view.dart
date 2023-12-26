import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cors/DI/dependency_injection.dart';
import 'package:movie_app/features/home/data/models/category_of_movies.dart';
import 'package:movie_app/features/home/data/models/top_rated_movies.dart';
import 'package:movie_app/features/home/logic/category_list_cubit/category_list_cubit.dart';
import 'package:movie_app/features/home/presentation/view/widget/category_list_item.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key,});


  @override
  State<CategoryView> createState() => _CategoryViewState();

  void getCategoryList() {}
}

class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryListCubit>(),
      child: const CustomCateoryListView(),
    );
  }
}
