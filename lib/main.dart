import 'package:flutter/material.dart';
import 'package:tugas_02/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: routes,
      // initialRoute: AppRoute.tabScreen, // kalo mau tab bar
      initialRoute: AppRoute.mainScreen, // kalo mau menu navigasi
    );
  }
}
