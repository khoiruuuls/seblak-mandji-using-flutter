// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seblak_mandji/pages/first-page.dart';

import '../../components/components-button.dart';
import '../../components/components-input.dart';
import '../../main.dart';
import 'sign-in-page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    Future addUserDetail(String name, String noPhone, String email) async {
      await FirebaseFirestore.instance.collection('users').add({
        'name': name,
        'phone': noPhone,
        'email': email,
      });
    }

    void showErrorMessage(String message) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      );
    }

    void signUserUp() async {
      // Menampilkan dialog putar saat proses pendaftaran berlangsung.
      showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );

      try {
        // Mendaftarkan pengguna dengan Firebase Authentication.
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        // add user detail
        addUserDetail(
          nameController.text,
          phoneController.text,
          emailController.text,
        );
        // Menutup dialog setelah pendaftaran selesai.
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FirstPage(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        // Menutup dialog jika terjadi kesalahan.
        Navigator.pop(context);
        // Menampilkan pesan kesalahan yang diterima dari Firebase Authentication.
        showErrorMessage(e.code);
      }
    }

    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ComponentsInput(
                    controller: nameController,
                    hintText: "Masukan Nama kamu",
                    obsecureText: false,
                  ),
                  ComponentsInput(
                    controller: phoneController,
                    hintText: "Masukan Nomer Hp kamu",
                    obsecureText: false,
                  ),
                  ComponentsInput(
                    controller: emailController,
                    hintText: "Masukan Email kamu",
                    obsecureText: false,
                  ),
                  ComponentsInput(
                    controller: passwordController,
                    hintText: "Masukan Password kamu",
                    obsecureText: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ComponentsButton(
                    text: "Sign Up",
                    onTap: signUserUp,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Have already account? ",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignInPage()));
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
