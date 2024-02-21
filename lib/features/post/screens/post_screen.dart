import 'package:flutter/material.dart';
import 'package:gizera_club/commons/widgets/custom_appbar.dart';
import 'package:gizera_club/features/home/drawers/community_list_drawer.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CommunityListDrawer(),
      body: Center(
        child: Text('posting screen'),
      ),
    );
  }
}
