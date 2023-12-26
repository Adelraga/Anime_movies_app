part of 'character_detail_cubit.dart';

@immutable
sealed class CharacterDetailState {}

final class CharacterDetailInitial extends CharacterDetailState {}
final class CharacterDetailLoading extends CharacterDetailState {}
final class CharacterDetailSuccess extends CharacterDetailState {
  final CharacterDetail character;

  CharacterDetailSuccess(this.character);
}
final class CharacterDetailFailure extends CharacterDetailState {
  final String errMessage;

  CharacterDetailFailure(this.errMessage);
}