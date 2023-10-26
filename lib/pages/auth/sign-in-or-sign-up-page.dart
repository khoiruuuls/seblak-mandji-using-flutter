// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../components/components-button.dart';
import '../../main.dart';
import 'sign-in-page.dart';
import 'sign-up-page.dart';

class SignInOrSignUpPage extends StatelessWidget {
  const SignInOrSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Image(
                height: 250,
                width: 250,
                image: AssetImage('assets/img/logo.png'),
              ),
              ComponentsButton(
                textColor: mainColor,
                text: "Log In",
                onTap: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignInPage()))
                },
              ),
              SizedBox(
                height: 20,
              ),
              ComponentsButton(
                bgColor: mainColor,
                textColor: Colors.white,
                showBorder: true,
                text: "Sign Up",
                onTap: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpPage()))
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
