// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:seblak_mandji/main.dart';

import 'date-absent-card.dart';

class AbsentCard extends StatelessWidget {
  const AbsentCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingMin = 12;
    const double paddingMax = 24;
    return Padding(
      padding: const EdgeInsets.only(
        top: paddingMin,
        bottom: paddingMax,
      ),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: cardBackgroundColor,
          borderRadius: BorderRadius.circular(paddingMin),
        ),
        child: Padding(
          padding: const EdgeInsets.all(paddingMin),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Absen",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: cardShadeColor,
                    borderRadius: BorderRadius.circular(paddingMin),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(paddingMin),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                image: AssetImage("assets/img/banner-1.png"),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Image(
                                image: AssetImage("assets/img/banner-2.png"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Halo Rio, Kerja bagus, kamu berhasil absen, Ayo pertahankan!",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: cardShadeColor,
                    borderRadius: BorderRadius.circular(paddingMin),
                  ),
                  child: DateAbsentCard()),
            ],
          ),
        ),
      ),
    );
  }
}
