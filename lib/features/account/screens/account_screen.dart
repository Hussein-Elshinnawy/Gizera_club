import 'package:flutter/material.dart';
import 'package:gizera_club/commons/widgets/custom_appbar.dart';
import 'package:gizera_club/features/home/drawers/community_list_drawer.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CommunityListDrawer(),
      body: Center(
        child: Text('account screen'),
      ),
    );
  }
}
