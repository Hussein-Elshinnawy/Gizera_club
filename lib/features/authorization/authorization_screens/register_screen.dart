import 'package:flutter/material.dart';
import 'package:gizera_club/commons/widgets/custom_button.dart';
import 'package:gizera_club/commons/widgets/custom_textfield.dart';


class RegisterScreen extends StatelessWidget {
  static const routeName = '/register';

  final _registerFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _clubIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _registerFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/gsc_logo.png"),
                  CustomTextField(
                    hideText: true,
                    fieldName: 'Name',
                    controller: _nameController,
                  ),
                  CustomTextField(
                    hideText: true,
                    fieldName: 'Club Id',
                    controller: _clubIdController,
                  ),
                  CustomTextField(
                    fieldName: 'Email',
                    textInputType: TextInputType.emailAddress,
                    controller: _emailController,
                  ),
                  CustomTextField(
                    hideText: true,
                    fieldName: 'Password',
                    controller: _passwordController,
                  ),
                  CustomButton(
                      pressed: () {
                        if (_registerFormKey.currentState!.validate()) {
                          // signInUser();
                        }
                      },
                      buttonText: 'Register'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
