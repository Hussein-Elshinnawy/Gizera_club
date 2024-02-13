import 'package:flutter/material.dart';
import 'package:gizera_club/commons/widgets/buttom_nav_bar.dart';
import 'package:gizera_club/features/authorization/authorization_screens/login_screen.dart';
import 'package:gizera_club/features/authorization/authorization_screens/register_screen.dart';
import 'package:gizera_club/features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),// this is home not the main
      );
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
    case RegisterScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => RegisterScreen(),
      );
    case ButtonNavBar.routeName:
      return MaterialPageRoute(
        builder: (_) => const ButtonNavBar(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('error page'),
          ),
        ),
      );
  }
}
