import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cors/DI/dependency_injection.dart';
import 'package:movie_app/features/home/data/models/character_detail.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';
import 'package:movie_app/features/home/logic/cubit/character_detail_cubit.dart';
import 'package:movie_app/features/home/presentation/view/widget/build_sliver_app_bar.dart';
import 'package:movie_app/features/home/presentation/view/widget/character_detail_view_body.dart';
import 'package:movie_app/features/home/presentation/view/widget/character_item_description.dart';

class CharacterDetailView extends StatelessWidget {
  const CharacterDetailView({super.key, required this.characterid});

  final CharacterData? characterid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: CharacterDetailViewBody(
        characterId: characterid,
      ),
    );
  }
}
