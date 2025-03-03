import 'package:flutter/material.dart';

import 'package:meals/config/config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Meals',
      routerConfig: appRouter,
    );
  }
}
