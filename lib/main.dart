import 'package:flutter/material.dart';

void main() {
  runApp(const FitraApp());
}

class FitraApp extends StatelessWidget {
  const FitraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitra',
      theme: ThemeData(useMaterial3: true),
      home: const Scaffold(
        body: Center(child: Text("Fitra App Setup Complete!")),
      ),
    );
  }
}
