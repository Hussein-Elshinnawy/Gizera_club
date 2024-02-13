import 'package:flutter/material.dart';
import 'package:gizera_club/features/home/screens/home_screen.dart';

import '../../features/account/screens/account_screen.dart';
import '../../features/post/screens/post_screen.dart';
class ButtonNavBar extends StatefulWidget {
  static const routeName='/main-page';
  const ButtonNavBar({super.key});

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  int _page=0;

  List<Widget> pages = [
    const HomeScreen(),
    const PostScreen(),
    const AccountScreen(),
  ];

  void updatePage(int page){
    setState(() {
      _page=page;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        iconSize: 28,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              child: const Icon(Icons.home_outlined),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(

              child: const Icon(Icons.add),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: const Icon(Icons.account_circle_outlined),
            ),
            label: '',
          ),
        ],

      ),
    );
  }
}
