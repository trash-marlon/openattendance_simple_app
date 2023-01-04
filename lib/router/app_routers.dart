import 'package:flutter/material.dart';
import 'package:openattendance_simple_app/screens/screens.dart';
import 'package:openattendance_simple_app/models/menu_option.dart';

class AppRouter {
  static const String initialRoute = 'config';

  static final menuOption = <MenuOption> [
    MenuOption(
      route: 'home',
      name: 'Home',
      screen: const HomeScreen(),
    ),
    
    MenuOption(
      route: 'config',
      name: 'Config',
      screen: const ConfigScreen(),
    ),

    MenuOption(
      route: 'history',
      name: 'History',
      screen: const HistoryScreen(),
    ),

    MenuOption(
      route: 'init',
      name: 'Init',
      screen: const InitScreen(),
    ),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {
       for (final option in menuOption) option.route: (BuildContext context) => option.screen
    };
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const InitScreen()
    );
  }

}