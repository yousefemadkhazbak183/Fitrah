part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<TaskModel> tasks;
  final double completionPercentage;
  final String userName;

  const HomeLoaded({
    required this.tasks,
    required this.completionPercentage,
    this.userName = "",
  });

  @override
  List<Object> get props => [tasks, completionPercentage, userName];
}

class HomeError extends HomeState {
  final String errorMessage;

  const HomeError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
