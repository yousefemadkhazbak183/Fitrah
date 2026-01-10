import 'package:fitrah/features/home/logic/bloc/home_bloc.dart';
import 'package:fitrah/features/home/presentation/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocProvider(
            create: (context) => HomeBloc()..add(DataHomeInitial()),
            child: const HomeScreen(),
          );
        },
      ),
    ],
  );
}
