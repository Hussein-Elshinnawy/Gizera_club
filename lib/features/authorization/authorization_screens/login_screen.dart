import 'package:flutter/material.dart';
import 'package:gizera_club/commons/widgets/custom_button.dart';
import 'package:gizera_club/commons/widgets/custom_textfield.dart';
import 'package:gizera_club/constants/global_variables.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _signinFromKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _signinFromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/gsc_logo.png"),
                  CustomeTextField(
                    fieldName: 'Email',
                    textInputType: TextInputType.emailAddress,
                    controller: _emailController,
                  ),
                  CustomeTextField(
                    hideText: true,
                    fieldName: 'Password',
                    controller: _passwordController,
                  ),
                  CustomButton(
                      pressed: () {
                        if (_signinFromKey.currentState!.validate()) {
                          // signInUser();
                        }
                      },
                      buttonText: 'Login'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account '),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          minimumSize: Size.zero,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'register',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: GlobalVariables.mainColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
