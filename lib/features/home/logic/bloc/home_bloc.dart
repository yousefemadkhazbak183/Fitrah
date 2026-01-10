import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitrah/features/home/data/models/task_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoading()) {
    on<DataHomeInitial>(_onLoadHomeData);
    on<HomeToggleCompleted>(_onToggleCompleted);
  }

  Future<void> _onLoadHomeData(
    DataHomeInitial event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());
    try {
      final tasks = [
        TaskModel(
          id: "1",
          title: "Fajr Prayer",
          isCompleted: false,
          subTitle: 'صلاة الفجر',
        ),
        TaskModel(
          id: "2",
          title: "Morning Azkar",
          isCompleted: true,
          subTitle: "اذكار الصباح",
        ),
      ];
      emit(HomeLoaded(tasks: tasks, completionPercentage: 50));
    } catch (e) {
      emit(HomeError(errorMessage: "حدث خطأ"));
    }
  }

  Future<void> _onToggleCompleted(
    HomeToggleCompleted event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());
    if (state is HomeLoaded) {
      final currentState = state as HomeLoaded;

      final updatedTasks = currentState.tasks.map((task) {
        return task.id == event.id
            ? task.copyWith(isCompleted: !task.isCompleted)
            : task;
      }).toList();

      final completedCount = updatedTasks.where((t) => t.isCompleted).length;
      final newPercentage = completedCount / updatedTasks.length;

      emit(
        HomeLoaded(
          tasks: updatedTasks,
          completionPercentage: newPercentage,
          userName: currentState.userName,
        ),
      );
    }
  }
}
