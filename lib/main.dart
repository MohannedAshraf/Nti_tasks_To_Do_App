import 'package:flutter/material.dart';

import 'package:to_do_app/Core/resources_manager/app_colors.dart';

import 'package:to_do_app/Features/presentation/Start/view/startpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: MyColors.backgroundColor,
      debugShowCheckedModeBanner: false,
      title: 'To_Do_App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const StartPage(),
    );
  }
}
