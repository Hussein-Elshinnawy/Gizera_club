import 'package:flutter/material.dart';
import 'package:gizera_club/features/search/screens/search_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.transparent,
            height: 42,
            // margin: const EdgeInsets.only(left: 0),
            // child: IconButton(
            //   onPressed: () {
            //       Scaffold.of(context).openDrawer();
            //   },
            //   icon: IconButton(onPressed: () { Navigator.pushNamed(context, CommunityListDrawer.routeName);}, icon: const Icon(Icons.menu),
            //   ),
            // ),
          ),
          Container(
            color: Colors.transparent,
            height: 42,
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SearchScreen.routeName);
                  },
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
                const CircleAvatar(
                  foregroundImage: AssetImage("assets/avatar.jpg"),
                ),
              ],
            ),
          ),

          // Expanded(
          //   child: Container(
          //     height: 42,
          //     margin: const EdgeInsets.only(left: 15),
          //     child: Material(
          //       borderRadius: BorderRadius.circular(7),
          //       elevation: 1,
          //       child: TextFormField(
          //         decoration: InputDecoration(
          //           prefixIcon: InkWell(
          //             onTap: () {},
          //             child: const Padding(
          //               padding: EdgeInsets.only(left: 6),
          //               child: Icon(
          //                 Icons.search,
          //                 color: Colors.black,
          //                 size: 23,
          //               ),
          //             ),
          //           ),
          //           filled: true,
          //           fillColor: Colors.white,
          //           contentPadding: const EdgeInsets.only(top: 10),
          //           border: const OutlineInputBorder(
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(7),
          //             ),
          //             borderSide: BorderSide.none,
          //           ),
          //           enabledBorder: const OutlineInputBorder(
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(7),
          //             ),
          //             borderSide: BorderSide(
          //               color: Colors.black38,
          //               width: 1,
          //             ),
          //           ),
          //           hintText: 'search in reddit',
          //           hintStyle: TextStyle(
          //             fontWeight: FontWeight.w500,
          //             fontSize: 17,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
