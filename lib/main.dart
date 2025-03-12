import 'package:flutter/material.dart';
import 'package:projects/core/resoures_manger/utiles/app_color.dart';
import 'package:projects/feature/presentation/start_screen/views/strart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        fontFamily: "Lexend Deca",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: AppColor.scaffoldBackground,
        appBarTheme: AppBarTheme(backgroundColor: AppColor.scaffoldBackground),
        useMaterial3: true,
      ),
      home: StrartScreen(),
    );
  }
}
