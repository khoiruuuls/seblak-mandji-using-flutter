// ignore_for_file: file_names, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seblak_mandji/pages/auth/sign-in-or-sign-up-page.dart';
import 'package:seblak_mandji/pages/first-page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is login

          if (snapshot.hasData) {
            return FirstPage();
          }
          // login page

          else {
            return SignInOrSignUpPage();
          }
        },
      ),
    );
  }
}
