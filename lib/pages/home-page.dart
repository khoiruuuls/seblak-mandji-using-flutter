// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:seblak_mandji/components/components-card.dart';
import 'package:seblak_mandji/components/home/absent-card.dart';
import 'package:seblak_mandji/components/home/user-card.dart';
import '../components/components-little-card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingMin = 12;
    const double paddingMax = 24;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72.182), // Adjust the height as needed
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            UserCard(),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: paddingMin, right: paddingMin),
                child: Column(
                  children: [
                    ComponentsCard(),
                    AbsentCard(),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: paddingMax,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Isi menu Seblak Mandji",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Anda bisa tulis menunya sendiri atau salin menu yang ada di GoFood",
                            style: TextStyle(),
                          )
                        ],
                      ),
                    ),
                    ComponentsLittleCard(),
                    ComponentsLittleCard(),
                    ComponentsLittleCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
