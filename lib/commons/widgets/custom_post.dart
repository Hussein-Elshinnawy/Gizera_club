import 'package:flutter/material.dart';
class CustomPost extends StatelessWidget {
  const CustomPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
      // padding: const EdgeInsets.all(8),
      width: double.infinity,
      // color: Colors.grey,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(color: Colors.black38),
      ),
    );
  }
}
