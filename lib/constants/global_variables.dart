import 'package:flutter/material.dart';
class GlobalVariables {
  static const mainColor = Color(0xff27592D);
  static const secondaryColor= Color(0xffFFBF00);
  static const backgroundColor = Color(0xffEEEEEE);
  static const greyBackgroundColor = Color(0xffebecee);

  static const kTextFieldDecoration = InputDecoration(
    labelText: 'Enter a value ',
    labelStyle: TextStyle(color: Colors.black45),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: mainColor, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: mainColor, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
    ),
  );
  static const postButtonStyle= ButtonStyle(
    iconColor: MaterialStatePropertyAll(Colors.black45),
  );
  static const postTextButtonStyle= TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.bold,
  );
  static const postTitleStyle= TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );


}