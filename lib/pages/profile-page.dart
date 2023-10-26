// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seblak_mandji/components/home/user-profile-card.dart';
import 'package:seblak_mandji/pages/auth/auth-page.dart';
import '../components/components-little-card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingMin = 12;
    const double paddingMax = 24;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: paddingMin, right: paddingMin),
          child: Column(
            children: [
              SizedBox(
                height: paddingMax,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: paddingMin),
              UserProfileCard(),
              SizedBox(height: paddingMax),
              ComponentsLittleCard(),
              ComponentsLittleCard(),
              ComponentsLittleCard(
                text: "Log out",
                icon: Icons.logout,
                onTap: () async {
                  try {
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AuthPage()));
                  } catch (e) {
                    // Handle sign-out errors if necessary
                    print('Sign-out error: $e');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
