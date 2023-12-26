import 'package:flutter/material.dart';
import 'package:movie_app/cors/Widgets/custom_rich_text.dart';
import 'package:movie_app/features/home/data/models/character_detail.dart';
import 'package:movie_app/features/home/data/models/characters_list.dart';

class CharacterItemDescription extends StatelessWidget {
  const CharacterItemDescription({super.key, required this.character});
  final CharacterData character;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 26, 26, 26),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                spreadRadius: 3,
                color: Color.fromARGB(255, 127, 127, 127))
          ]),
      margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Info",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                CustomRichText(
                  title: "Name : ",
                  value: character.name ?? "",
                ),
                SizedBox(
                  height: 1,
                ),
                character.name_kanji != null
                    ? CustomRichText(
                        title: "nick name : ",
                        value: character.name_kanji ?? "",
                      )
                    : SizedBox(
                        height: 15,
                      ),
                CustomRichText(
                  title: "favourites : ",
                  value: (character.favorites ?? 0).toString(),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomRichText(
                  title: "about : ",
                  value: character.about ?? "",
                ),
                SizedBox(
                  height: 800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
