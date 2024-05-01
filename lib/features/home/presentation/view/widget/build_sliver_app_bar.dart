import 'package:flutter/material.dart';
import 'package:movie_app/cors/Widgets/fade_animation.dart';
import 'package:movie_app/features/home/data/models/character_detail.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';

class buildSliverAppBar extends StatelessWidget {
  const buildSliverAppBar({super.key, required this.character});
  final CharacterData character;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: Colors.grey,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          "${character.name}",
          style: TextStyle(color: Colors.white),
        ),
        background: Hero(
          tag: character.mal_id ?? 0,
          child: ScaleAnimation(
            child: Image.network(
              character.images?.jpg?.image_url ?? "",
              fit: BoxFit.cover,
               scale: 2
            ),
          ),
        ),
      ),
    );
  } 
}