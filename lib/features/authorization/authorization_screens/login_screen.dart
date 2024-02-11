import 'package:flutter/material.dart';
import 'package:gizera_club/commons/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
        body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/gsc_logo.png"),
                const CustomeTextField(fieldName: 'User Name', textInputType: TextInputType.emailAddress,),
                const CustomeTextField(hideText: true, fieldName: 'Password',),
                TextButton(
                  onPressed: () {},
                  child: Text('login'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account'),
                    TextButton(
                      onPressed: () {},
                      child:const Text('register'),
                    ),
                  ],
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
