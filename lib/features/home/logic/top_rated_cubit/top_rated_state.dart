part of 'top_rated_cubit.dart';

@immutable
sealed class TopRatedState {}

final class TopRatedInitial extends TopRatedState {}
final class TopRatedLoading extends TopRatedState {}
final class TopRatedSuccess extends TopRatedState {
  final List<Data> topRatedList;

  TopRatedSuccess(this.topRatedList);
}
final class TopRatedFailure extends TopRatedState {
  final String errMessage;

  TopRatedFailure(this.errMessage);
}
