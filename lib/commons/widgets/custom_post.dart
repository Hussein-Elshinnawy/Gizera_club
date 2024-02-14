import 'package:flutter/material.dart';
import 'package:gizera_club/constants/global_variables.dart';

class CustomPost extends StatefulWidget {
  const CustomPost({
    super.key,
  });

  @override
  State<CustomPost> createState() => _CustomPostState();
}

class _CustomPostState extends State<CustomPost> {
  double postVotes = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
      // padding: const EdgeInsets.all(8),
      width: double.infinity,
      // color: Colors.grey,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(color: Colors.black38),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title',style: GlobalVariables.postTitleStyle,),
            Text('description'),
            Image.asset(
              "assets/gsc_logo.png",
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // TextButton.icon(onPressed: (){}, icon: Icon(Icons.home_max,), label: Text('home')),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: OutlinedButton.icon(
                    style: GlobalVariables.postButtonStyle,
                    onPressed: () {
                      setState(() {
                        ++postVotes;
                      });
                    },
                    icon: const Icon(Icons.arrow_upward),
                    label: Text(postVotes.round().toString(), style: GlobalVariables.postTextButtonStyle,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: OutlinedButton(
                    style: GlobalVariables.postButtonStyle,
                    onPressed: () {
                      setState(() {
                        --postVotes;
                      });
                    },
                    child: Icon(
                      Icons.arrow_downward,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: OutlinedButton.icon(
                    style: GlobalVariables.postButtonStyle,
                    onPressed: () {},
                    icon:const  Icon(Icons.comment),
                    label: const Text('comment',style: GlobalVariables.postTextButtonStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: OutlinedButton(
                    style: GlobalVariables.postButtonStyle,
                    onPressed: () {},
                    child: const Icon(
                      Icons.share,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
