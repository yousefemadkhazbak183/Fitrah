// ignore: library_prefixes
import 'package:fitrah/core/routing/app_router.dart';
import 'package:fitrah/core/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FitraApp());
}

class FitraApp extends StatelessWidget {
  const FitraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Fitra - فطره',
      theme: lightTheme,
      locale: Locale("ar"),
      routerConfig: AppRouter.router,
    );
  }
}
