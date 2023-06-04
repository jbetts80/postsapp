import 'package:flutter/material.dart';
import 'package:postsapp/core/presentation/theme/color_palette.dart';
import 'package:postsapp/features/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: ColorPalette.green,
          titleTextStyle: TextStyle(color: ColorPalette.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        iconTheme: const IconThemeData(color: ColorPalette.green),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
