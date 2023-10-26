// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:seblak_mandji/components/home/date-card.dart';
import 'package:seblak_mandji/components/home/home-card.dart';
import 'package:seblak_mandji/main.dart';

class ComponentsCard extends StatelessWidget {
  const ComponentsCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingMin = 12;
    return Padding(
      padding: const EdgeInsets.only(
        top: paddingMin,
      ),
      child: Container(
        height: 205,
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
                children: [
                  Icon(
                    Icons.location_on,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Seblak Mandji Cifest 1",
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
                              child: HomeCard(
                                text: "Total Transaksi",
                                myIcon: LineIcons.archive,
                                secondaryText: "90",
                              ),
                            ),
                            Expanded(
                              child: HomeCard(
                                text: "Pendapatan",
                                myIcon: LineIcons.fileInvoiceWithUsDollar,
                                secondaryText: "Rp. 200.000",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 230,
                  decoration: BoxDecoration(
                    color: cardShadeColor,
                    borderRadius: BorderRadius.circular(paddingMin),
                  ),
                  child: DateCard()),
            ],
          ),
        ),
      ),
    );
  }
}
