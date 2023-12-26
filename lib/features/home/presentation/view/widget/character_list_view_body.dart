import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/cors/Routing/routes.dart';
import 'package:movie_app/features/home/logic/category_list_cubit/category_list_cubit.dart';
import 'package:movie_app/features/home/logic/characters_list_cubit/characters_list_cubit.dart';

class CharacterListViewBody extends StatefulWidget {
  const CharacterListViewBody({super.key});

  @override
  State<CharacterListViewBody> createState() => _CharacterListViewBodyState();
}

class _CharacterListViewBodyState extends State<CharacterListViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CharactersListCubit>(context).getAllCharactersList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersListCubit, CharactersListState>(
      builder: (context, state) {
        if (state is CharactersListSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: ListView.builder(
              itemCount: state.characters.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(107, 0, 90, 170),
                    radius: 115,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 216, 216, 216),
                        radius: 110,
                        child: GestureDetector(
                          onTap: () {
                            GoRouter.of(context).push(Routes.characterDetails,
                                extra: state.characters[index]);
                            setState(() {});
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "${state.characters[index].images?.jpg?.image_url}"), //NetworkImage
                            radius: 100,
                          ),
                        ), //CircleAvatar
                      ),
                    ), //CircleAvatar
                  ),
                ); //CircleAvatar;
              },
            ),
          );
        } else if (state is CharactersListFailure) {
          return Text("${state.errMessage}");
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
