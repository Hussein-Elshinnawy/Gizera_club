import 'package:flutter/material.dart';
import 'package:gizera_club/constants/global_variables.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback pressed;
  final String buttonText;
  const CustomButton({super.key, required this.pressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: ElevatedButton(
        onPressed: pressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: GlobalVariables.secondaryColor,
            foregroundColor: Colors.white,
            elevation:3.0,
            minimumSize:const Size(double.infinity, 50) ,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
            )

        ),
        child: Text(buttonText, style: const TextStyle(), ),
        ),
    );
  }
}
