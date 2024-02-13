import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gizera_club/constants/global_variables.dart';
import 'package:gizera_club/features/authorization/authorization_screens/login_screen.dart';
import 'package:gizera_club/router.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      // theme: ThemeData(
      //   scaffoldBackgroundColor:Colors.white,
      //   colorScheme: const ColorScheme.light(primary: GlobalVariables.mainColor ),
      // ),
      debugShowCheckedModeBanner: false,
      title: 'GSC Reddit',
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LoginScreen(),
    );
  }
}

