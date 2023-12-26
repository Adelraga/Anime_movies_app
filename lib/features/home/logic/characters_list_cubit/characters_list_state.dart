part of 'characters_list_cubit.dart';

@immutable
sealed class CharactersListState {}

final class CharactersListInitial extends CharactersListState {}
final class CharactersListLoading extends CharactersListState {}
final class CharactersListSuccess extends CharactersListState {
  final List<CharacterData> characters;

  CharactersListSuccess(this.characters);
}
final class CharactersListFailure extends CharactersListState {
  final String errMessage;

  CharactersListFailure(this.errMessage);
}


