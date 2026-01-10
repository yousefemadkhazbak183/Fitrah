import 'package:fitrah/features/home/logic/bloc/home_bloc.dart';
import 'package:fitrah/features/home/presentation/componant/card_widget.dart';
import 'package:fitrah/features/home/presentation/componant/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoaded) {
            return Column(
              children: [
                HomeHeader(
                  userName: state.userName,
                  percentage: state.completionPercentage,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.tasks.length,
                    itemBuilder: (context, index) => CardWidget(
                      task: state.tasks[index],
                      onToggleCompleted: () {
                        context.read<HomeBloc>().add(
                          HomeToggleCompleted(state.tasks[index].id),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
