import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/data/models/character_detail.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';
import 'package:movie_app/features/home/logic/characters_list_cubit/characters_list_cubit.dart';
import 'package:movie_app/features/home/logic/cubit/character_detail_cubit.dart';
import 'package:movie_app/features/home/presentation/view/widget/build_sliver_app_bar.dart';
import 'package:movie_app/features/home/presentation/view/widget/character_item_description.dart';

class CharacterDetailViewBody extends StatefulWidget {
  const CharacterDetailViewBody({super.key, required this.characterId});
  final CharacterData? characterId;

  @override
  State<CharacterDetailViewBody> createState() =>
      _CharacterDetailViewBodyState();
}

class _CharacterDetailViewBodyState extends State<CharacterDetailViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
  }

  Widget build(BuildContext context) {

          return CustomScrollView(
            slivers: [
              buildSliverAppBar(
                character: widget.characterId!,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    CharacterItemDescription(character:widget.characterId!),
                  ],
                ),
              )
            ],
          );
      }
  }

