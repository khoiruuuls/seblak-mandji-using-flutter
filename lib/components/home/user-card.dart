// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:seblak_mandji/main.dart';
import 'package:seblak_mandji/pages/profile-page.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingMin = 16;

    final String? email = FirebaseAuth.instance.currentUser!.email;
    final userDocRef = FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .limit(1)
        .get();

    String? userName;
    String? noPhone;

    userDocRef.then((snapshot) {
      if (snapshot.docs.isNotEmpty) {
        final userDoc = snapshot.docs.first;
        userName = userDoc['name'];
        noPhone = userDoc['phone'];
      } else {
        // Display a user-friendly message if the email is null.
        userName = 'No email found';
      }
    });

    return FutureBuilder<DocumentSnapshot>(
      future: FirebaseFirestore.instance
          .collection('users')
          .doc('eDZrwLC8LgjGQQ8r7owH')
          .get(),
      builder: (context, snapshot) {
        return Container(
          height: 72,
          width: double.infinity,
          decoration: BoxDecoration(
            color: cardBackgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: paddingMin, right: paddingMin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      userName ?? "Username",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      noPhone ?? "no phone",
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  ),
                  child: Icon(
                    LineIcons.user,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
