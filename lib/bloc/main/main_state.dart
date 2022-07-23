part of "main_bloc.dart";

// @immutable
abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

class PageLoading extends MainState {
  @override
  String toString() => 'PageLoadingState';
}
