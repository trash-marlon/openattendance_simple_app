import 'package:flutter/material.dart';
import 'package:openattendance_simple_app/router/app_routers.dart';
import 'package:openattendance_simple_app/themes/app_theme_indigo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getAppRoutes(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: AppThemeIndigo.lightTheme,
    );
  }
}