import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cors/DI/dependency_injection.dart';
import 'package:movie_app/features/home/logic/characters_list_cubit/characters_list_cubit.dart';
import 'package:movie_app/features/home/presentation/view/widget/character_list_view_body.dart';

class CharacterListView extends StatefulWidget {
  const CharacterListView({super.key});

  @override
  State<CharacterListView> createState() => _CharacterListViewState();
}

class _CharacterListViewState extends State<CharacterListView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CharactersListCubit>(),
      child: const CharacterListViewBody(),
    );
  }
}