// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/components-little-card.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Laporan Page",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ini adalah laporan page, nanti laporan ya ke bos Rio",
                        style: TextStyle(),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: paddingMax,
              ),
              ComponentsLittleCard(),
              ComponentsLittleCard(),
              ComponentsLittleCard(),
              ComponentsLittleCard(),
            ],
          ),
        ),
      ),
    );
  }
}
