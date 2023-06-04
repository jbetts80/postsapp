import 'package:flutter/material.dart';
import 'package:postsapp/core/data/config/injector.dart';
import 'package:postsapp/core/presentation/theme/color_palette.dart';
import 'package:postsapp/core/presentation/theme/typography/_typography.dart';
import 'package:postsapp/features/home/presentation/screens/users_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UsersScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: ColorPalette.green,
          titleTextStyle: AppTextStyle.medium.copyWith(color: ColorPalette.white),
        ),
        iconTheme: const IconThemeData(color: ColorPalette.green),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
