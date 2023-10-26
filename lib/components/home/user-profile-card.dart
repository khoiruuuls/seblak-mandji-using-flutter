// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingMin = 12;
    const double paddingMax = 24;

    final String? email = FirebaseAuth.instance.currentUser!.email;
    final userDocRef = FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .limit(1)
        .get();

    String? userName;
    String? noPhone;

    userDocRef.then(
      (snapshot) {
        if (snapshot.docs.isNotEmpty) {
          final userDoc = snapshot.docs.first;
          userName = userDoc['name'];
          noPhone = userDoc['phone'];
        } else {
          // Display a user-friendly message if the email is null.
          userName = 'No email found';
        }
      },
    );

    return FutureBuilder<DocumentSnapshot>(
      future: FirebaseFirestore.instance
          .collection('users')
          .doc('eDZrwLC8LgjGQQ8r7owH')
          .get(),
      builder: ((context, snapshot) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.circle,
              color: Colors.grey.shade300,
              size: 90,
            ),
            SizedBox(width: paddingMax),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: paddingMin),
                Text(
                  userName ?? "Username",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(noPhone ?? "no phone"),
              ],
            ),
          ],
        );
      }),
    );
  }
}
