part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class DataHomeInitial extends HomeEvent {}

class HomeToggleCompleted extends HomeEvent {
  final String id;

  const HomeToggleCompleted(this.id);

  @override
  List<Object> get props => [id];
}
