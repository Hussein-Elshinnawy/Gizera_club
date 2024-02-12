import 'package:flutter/material.dart';
import 'package:gizera_club/constants/global_variables.dart';
class CustomeTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool hideText;
  final String fieldName;
  final TextInputType textInputType;
  const CustomeTextField({super.key,  this.hideText=false, required this.fieldName, this.textInputType=TextInputType.text, required this.controller });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: hideText,
        decoration: GlobalVariables.kTextFieldDecoration.copyWith(labelText: fieldName),
        validator: (val){
          if(val == null || val.isEmpty){
            return 'Enter your $fieldName';
          }else if(!val.contains('@')&&fieldName=='Email'){
            return 'that is invalid Email';
          }
          return null;
        },
      )
    );
  }
}
