import 'package:flutter/material.dart';
import 'package:gizera_club/commons/widgets/custom_appbar.dart';
import 'package:gizera_club/constants/global_variables.dart';
import 'package:gizera_club/commons/widgets/custom_post.dart';
class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomPost(),
              CustomPost(),
              CustomPost(),
            ],
          ),
        ),
      ),
    );
  }
}


