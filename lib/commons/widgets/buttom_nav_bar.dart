import 'package:flutter/material.dart';
import 'package:gizera_club/constants/global_variables.dart';
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
      bottomNavigationBar: Container(
        decoration:const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.black12, width: 1))),
        child: BottomNavigationBar(
          currentIndex: _page,
          iconSize: 28,
          selectedItemColor: GlobalVariables.mainColor,
          // unselectedItemColor: Variables.unselectedNavBarColor,
          // backgroundColor: Variables.backgroundColor,
          onTap: updatePage,
          items:[
            BottomNavigationBarItem(
                icon:_page==0? Icon(Icons.home): Icon(Icons.home_outlined),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'post',
            ),
            BottomNavigationBarItem(
              icon:_page==2 ? Icon(Icons.account_circle_rounded): Icon(Icons.account_circle_outlined),
              label: 'profile',
            ),
          ],
        
        ),
      ),
    );
  }
}
