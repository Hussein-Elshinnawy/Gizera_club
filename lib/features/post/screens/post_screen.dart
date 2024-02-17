import 'package:flutter/material.dart';
import 'package:gizera_club/commons/widgets/custom_appbar.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      body: Center(
        child: Text('posting screen'),
      ),
    );
  }
}
